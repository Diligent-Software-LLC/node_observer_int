# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require 'observer_int'

# NodeObserverInt.
# @abstract
# @class_description
#   A NodeObserver library interface.
# @attr observing [Set]
#   Subjects.
# @attr changed [Set]
#   Changed subjects.
class NodeObserverInt < ObserverInt
  VERSION = '0.1.0'.freeze()
end
