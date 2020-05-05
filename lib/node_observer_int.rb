# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "node_observer_int/version"

# NodeObserverInt.
# @abstract
# @class_description
#   A NodeObserver library interface.
# @attr observing [Set]
#   Subjects.
# @attr changed [Set]
#   Changed subjects.
class NodeObserverInt < ObserverInt

  # self.instance().
  # @description
  #   Gets instance. Lazily initializes instance.
  # @return [NodeObserver]
  #   The instance.
  def self.instance()
  end

  # subject(n = nil).
  # @description
  #   Predicate. Verifies a Node is a subject.
  # @param n [Node]
  #   Any instance.
  # @return [TrueClass, FalseClass]
  #   True in the case the argument is an 'observing' element. False otherwise.
  def subject(n = nil)
  end

  # changed_node(subject = nil).
  # @description
  #   Predicate. Verifies a subject was changed.
  # @param subject [Node]
  #   Any instance.
  # @return [TrueClass, FalseClass]
  #   True in the case the argument is a changed element. False otherwise.
  def changed_node(subject = nil)
  end

  protected

  # observing().
  # @description
  #   Gets 'observing'.
  # @return [Set]
  #   observing's reference.
  def observing()
  end

  # changed().
  # @description
  #   Gets changed.
  # @return [Set]
  #   changed's reference.
  def changed()
  end

  # add(n = nil).
  # @description
  #   Adds observing a subject.
  # @param n [Node]
  #   The addition.
  # @return [NilClass]
  #   nil.
  def add(n = nil)
  end

  # remove(n = nil).
  # @description
  #   Removes a subject.
  # @param n [Node]
  #   The removal.
  # @return [NilClass]
  #   nil.
  def remove(n = nil)
  end

  # add_changed(n = nil).
  # @description
  #   Adds changed a changed subject.
  # @param n [Node]
  #   A changed subject.
  # @return [NilClass]
  #   nil.
  def add_changed(n = nil)
  end

  # remove_changed(n = nil).
  # @description
  #   Removes a changed subject. Calls after a Subscription update call.
  # @param n [Node]
  #   A changed element. The element's subscribers were updated, so it is an
  #   unchanged subject.
  # @return [NilClass]
  #   nil.
  def remove_changed(n = nil)
  end

  # receive_change(n = nil).
  # @description
  #   Receives a Node's state change.
  # @param n [Node]
  #   An existing subject.
  # @return [NilClass]
  #   nil.
  def receive_change(n = nil)
  end

  # notify(n = nil).
  # @description
  #   Updates a subject's subscribers.
  # @param n [Node]
  #   A changed subject.
  # @return [NilClass]
  #   nil.
  def notify(n = nil)
  end

  private

  # observing=(s = nil).
  # @description
  #   Sets observing.
  # @param s [Set]
  #   An empty set.
  # @return [Set]
  #   The argument.
  def observing=(s = nil)
  end

  # changed=(s = nil).
  # @description
  #   Sets 'changed'.
  # @param s [Set]
  #   An empty set.
  # @return [Set]
  #   The argument.
  def changed=(s = nil)
  end

  # self.new(subjects = Set[], changed_subjects = Set[]).
  # @description
  #   Initializes a singleton instance.
  # @param subjects [Set]
  #   An empty Set.
  # @param changed_subjects [Set]
  #   An empty Set.
  def self.new(subjects = Set[], changed_subjects = Set[])
  end

  # self.instance=(singleton = new()).
  # @description
  #   Initializes the singleton instance.
  # @param singleton [NodeObserverInt]
  #   The instance.
  # @return [NodeObserver]
  #   The default parameter.
  def self.instance=(singleton = new())
  end

  private_class_method :new
  private_class_method :instance=

end
