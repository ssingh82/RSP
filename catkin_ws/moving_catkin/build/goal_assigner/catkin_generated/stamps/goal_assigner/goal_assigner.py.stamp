#!/usr/bin/env
from itertools import permutations
from scipy.spatial import distance
import rospy
import sys
import tf

def goalAssign(curr_pos_arr, goal_pos_arr):
  if len(curr_pos_arr) != goal_pos_arr:
    raise Exception('number of goals dne number of edumips')

  goal_permutations = list(permutations(goal_pos_arr))
  best_permutation_arr = None
  best_permutation_dist = 2.**31
  for permutation_arr in goal_permutations:
    dist = assignDistance(curr_pos_arr, permutation_arr[:-1])
    if dist < best_permutation_dist:
      best_permutation_arr = permutation_arr
      best_permutation_dist  = dist
  #turn permutation array to array of tf frames
  #s.t. each tf frame can just be fired off at will
  return best_permutation_array

def assignDistance(curr_pos_arr, goal_pos_arr):
  dist = 0.
  for i in len(curr_pos_arr):
    dist += distance.euclidean(curr_pos_arr[i], goal_pos_arr[i])
  return dist

def makeGPosArray(sysArgs):
  ret = [None, None, None, None, None]
  for i in range(5):
    val = i*3
    x = sysArgs[val+0]
    y = sysArgs[val+1]
    theta = sysArgs[val+2]
    ret[i] = [x,y,theta]
  return ret

def main():
  print 'test'
  sys.stdout.write('testl')
  rospy.init_node('goal_assigner', log_level=rospy.DEBUG)



  rate = rospy.Rate(10)
  raise Exception('testex')
  #get goal positions
  if len(sys.argv) < 16:
    raise Exception('Not enough arguments for 5  robots')
  goal_pos_array = makeGPosArray(sys.argv[1:])

  #get current EduMip positions
  curr_pos_array = [None, None, None, None, None]
  listener = tf.TransformListener()
  for i in range(5):
    edumip_name = 'edumip_body/' + str(i+1)
    (trans,rot)=listener.lookupTransform(edumip_name, '/world', rospy.Time(0))
    curr_pos = [trans[0], trans[1]]
    curr_pos_array[i] = curr_pos


  rospy.loginfo('test message')
  print 'test message'

  #compute the best permutation array
  best_goal_assigns = goalAssign(curr_pos_array, goal_pos_array)

  #publish
  br = tf.TransformBroadcaster()
  while not rospy.is_shutdown():
    for i in range(5):
      goal_name = '/goal/' + str(i+1)
      quaternion = tf.transformations.quaternion_from_euler(0,0,best_goal_assigns[2])
      br.sendTransform((best_goal_assigns[i][0], best_goal_assigns[i][1], 1.5), quaternion, rospy.Time.now(), goal_name, '/world')

if __name__ == '__main__':
  #initialize the publishers
  main()
