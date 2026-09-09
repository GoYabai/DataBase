SELECT user_id
FROM emails e
JOIN texts t
  ON e.email_id = t.email_id
WHERE t.signup_action = 'Confirmed'
  AND t.action_date - INTERVAL '1 days' = e.signup_date