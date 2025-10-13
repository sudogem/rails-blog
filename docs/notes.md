##### Displaying ENV from the View Layer
# ERB
<%= debug ENV.to_h.to_yaml %>

# HAML
= debug ENV.to_h.to_yaml
