-- ## Departments
-- - 1: MKT
-- - 2: Tech
-- - 3: BPS
-- - 4: PM
-- - 5: HR

-- ## Roles
-- - 1: SVP $90K
-- - 2: JVP $80K
-- - 3: AVP $70K
-- - 4: Manager $60K
-- - 5: AsntMngr $50K
-- - 6: Specialist $40K
-- - 7: Intern $30K

-- ## Employees
-- - 1: Paul Clark, SVP, Tech
-- - 2: Travis Pitts, Manager, Tech
-- - 3: Jessica Smithe, Intern, Tech
-- - 4: Susan Jones, SVP, MKT
-- - 5: Kelsey Bowman, JVP, MKT
-- - 6: Jason Masongill, Manager, MKT

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Paul', 'Clarke', 1, 1),
('Travis', 'Pitts', 4, 1),
('Jessica', 'Smithe', 7, 1),
('Susan', 'Jones', 1, 4),
('Kelsey', 'Bowman', 2, 4),
('Jason', 'Masongill', 4, 4),
('Ronald', 'Firbank', 6, 2),
('Virginia', 'Woolf', 6, 2),
('Piers', 'Gaveston', 6, 2),
('Charles', 'LeRoi', 6, 6),
('Katherine', 'Mansfield', 6, 6),
('Dora', 'Carrington', 6, 6),
('Edward', 'Bellamy', 6, 6),
('Montague', 'Summers', 7, 4),
('Octavia', 'Butler', 7, 4),
('Unica', 'Zurn', 7, 4);
