{
	"data": {
		"data": [
			{
				"payload": {
					"data": {
						"config": {
							"channel_group": {
								"groups": {
									"Consortiums": {
										"groups": {
											"NamzConsortium": {
												"groups": {
													"DistributorMSP": {
														"groups": {},
														"mod_policy": "Admins",
														"policies": {
															"Admins": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "DistributorMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															},
															"Readers": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "DistributorMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "DistributorMSP",
																					"role": "PEER"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "DistributorMSP",
																					"role": "CLIENT"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					},
																					{
																						"signed_by": 1
																					},
																					{
																						"signed_by": 2
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															},
															"Writers": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "DistributorMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "DistributorMSP",
																					"role": "CLIENT"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					},
																					{
																						"signed_by": 1
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															}
														},
														"values": {
															"MSP": {
																"mod_policy": "Admins",
																"value": {
																	"config": {
																		"admins": [],
																		"crypto_config": {
																			"identity_identifier_hash_function": "SHA256",
																			"signature_hash_family": "SHA2"
																		},
																		"fabric_node_ous": {
																			"admin_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZVENDQWdpZ0F3SUJBZ0lSQVAvdTZLRzlsVkQ5RDFSYTFjQUtJWjh3Q2dZSUtvWkl6ajBFQXdJd2V6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhIVEFiQmdOVkJBb1RGR1JwYzNSeWFXSjFkRzl5TG01aGJYb3VZMjl0TVNBd0hnWURWUVFECkV4ZGpZUzVrYVhOMGNtbGlkWFJ2Y2k1dVlXMTZMbU52YlRBZUZ3MHhPVEV3TWpNeU1EUTNNREJhRncweU9URXcKTWpBeU1EUTNNREJhTUhzeEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlFd3BEWVd4cFptOXlibWxoTVJZdwpGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVIwd0d3WURWUVFLRXhSa2FYTjBjbWxpZFhSdmNpNXVZVzE2CkxtTnZiVEVnTUI0R0ExVUVBeE1YWTJFdVpHbHpkSEpwWW5WMGIzSXVibUZ0ZWk1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVI2NjFTRml4bDRRTjA2SVE0a2hUc2NHc2xnaXZPWWtUbUFTNUNlZldLRwoycmg0YzVYdURSalcwS1VvMEtvWjdvUDh0SVd1a1ArZ3FYUXR4NVdEUzExZG8yMHdhekFPQmdOVkhROEJBZjhFCkJBTUNBYVl3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdLUVlEVlIwT0JDSUVJR0NIbzV6MEhFOTFSbzkzckx3Y2ZzNFRSR0NacGZkNjFUdVBqRjhXM2xCZApNQW9HQ0NxR1NNNDlCQU1DQTBjQU1FUUNJQ0NJTHMxZFJHaHF5dmlqamM4TVJ0U0dtUGpCcVJkMmtxQmRkbDZXCkZ5dUtBaUFTekMrcDYxQk54VlFTYWhQaElQZ0djd3VUL0RmWEZqYUtnRjNDQTV1ajFBPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=",
																				"organizational_unit_identifier": "admin"
																			},
																			"client_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZVENDQWdpZ0F3SUJBZ0lSQVAvdTZLRzlsVkQ5RDFSYTFjQUtJWjh3Q2dZSUtvWkl6ajBFQXdJd2V6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhIVEFiQmdOVkJBb1RGR1JwYzNSeWFXSjFkRzl5TG01aGJYb3VZMjl0TVNBd0hnWURWUVFECkV4ZGpZUzVrYVhOMGNtbGlkWFJ2Y2k1dVlXMTZMbU52YlRBZUZ3MHhPVEV3TWpNeU1EUTNNREJhRncweU9URXcKTWpBeU1EUTNNREJhTUhzeEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlFd3BEWVd4cFptOXlibWxoTVJZdwpGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVIwd0d3WURWUVFLRXhSa2FYTjBjbWxpZFhSdmNpNXVZVzE2CkxtTnZiVEVnTUI0R0ExVUVBeE1YWTJFdVpHbHpkSEpwWW5WMGIzSXVibUZ0ZWk1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVI2NjFTRml4bDRRTjA2SVE0a2hUc2NHc2xnaXZPWWtUbUFTNUNlZldLRwoycmg0YzVYdURSalcwS1VvMEtvWjdvUDh0SVd1a1ArZ3FYUXR4NVdEUzExZG8yMHdhekFPQmdOVkhROEJBZjhFCkJBTUNBYVl3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdLUVlEVlIwT0JDSUVJR0NIbzV6MEhFOTFSbzkzckx3Y2ZzNFRSR0NacGZkNjFUdVBqRjhXM2xCZApNQW9HQ0NxR1NNNDlCQU1DQTBjQU1FUUNJQ0NJTHMxZFJHaHF5dmlqamM4TVJ0U0dtUGpCcVJkMmtxQmRkbDZXCkZ5dUtBaUFTekMrcDYxQk54VlFTYWhQaElQZ0djd3VUL0RmWEZqYUtnRjNDQTV1ajFBPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=",
																				"organizational_unit_identifier": "client"
																			},
																			"enable": true,
																			"orderer_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZVENDQWdpZ0F3SUJBZ0lSQVAvdTZLRzlsVkQ5RDFSYTFjQUtJWjh3Q2dZSUtvWkl6ajBFQXdJd2V6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhIVEFiQmdOVkJBb1RGR1JwYzNSeWFXSjFkRzl5TG01aGJYb3VZMjl0TVNBd0hnWURWUVFECkV4ZGpZUzVrYVhOMGNtbGlkWFJ2Y2k1dVlXMTZMbU52YlRBZUZ3MHhPVEV3TWpNeU1EUTNNREJhRncweU9URXcKTWpBeU1EUTNNREJhTUhzeEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlFd3BEWVd4cFptOXlibWxoTVJZdwpGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVIwd0d3WURWUVFLRXhSa2FYTjBjbWxpZFhSdmNpNXVZVzE2CkxtTnZiVEVnTUI0R0ExVUVBeE1YWTJFdVpHbHpkSEpwWW5WMGIzSXVibUZ0ZWk1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVI2NjFTRml4bDRRTjA2SVE0a2hUc2NHc2xnaXZPWWtUbUFTNUNlZldLRwoycmg0YzVYdURSalcwS1VvMEtvWjdvUDh0SVd1a1ArZ3FYUXR4NVdEUzExZG8yMHdhekFPQmdOVkhROEJBZjhFCkJBTUNBYVl3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdLUVlEVlIwT0JDSUVJR0NIbzV6MEhFOTFSbzkzckx3Y2ZzNFRSR0NacGZkNjFUdVBqRjhXM2xCZApNQW9HQ0NxR1NNNDlCQU1DQTBjQU1FUUNJQ0NJTHMxZFJHaHF5dmlqamM4TVJ0U0dtUGpCcVJkMmtxQmRkbDZXCkZ5dUtBaUFTekMrcDYxQk54VlFTYWhQaElQZ0djd3VUL0RmWEZqYUtnRjNDQTV1ajFBPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=",
																				"organizational_unit_identifier": "orderer"
																			},
																			"peer_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZVENDQWdpZ0F3SUJBZ0lSQVAvdTZLRzlsVkQ5RDFSYTFjQUtJWjh3Q2dZSUtvWkl6ajBFQXdJd2V6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhIVEFiQmdOVkJBb1RGR1JwYzNSeWFXSjFkRzl5TG01aGJYb3VZMjl0TVNBd0hnWURWUVFECkV4ZGpZUzVrYVhOMGNtbGlkWFJ2Y2k1dVlXMTZMbU52YlRBZUZ3MHhPVEV3TWpNeU1EUTNNREJhRncweU9URXcKTWpBeU1EUTNNREJhTUhzeEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlFd3BEWVd4cFptOXlibWxoTVJZdwpGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVIwd0d3WURWUVFLRXhSa2FYTjBjbWxpZFhSdmNpNXVZVzE2CkxtTnZiVEVnTUI0R0ExVUVBeE1YWTJFdVpHbHpkSEpwWW5WMGIzSXVibUZ0ZWk1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVI2NjFTRml4bDRRTjA2SVE0a2hUc2NHc2xnaXZPWWtUbUFTNUNlZldLRwoycmg0YzVYdURSalcwS1VvMEtvWjdvUDh0SVd1a1ArZ3FYUXR4NVdEUzExZG8yMHdhekFPQmdOVkhROEJBZjhFCkJBTUNBYVl3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdLUVlEVlIwT0JDSUVJR0NIbzV6MEhFOTFSbzkzckx3Y2ZzNFRSR0NacGZkNjFUdVBqRjhXM2xCZApNQW9HQ0NxR1NNNDlCQU1DQTBjQU1FUUNJQ0NJTHMxZFJHaHF5dmlqamM4TVJ0U0dtUGpCcVJkMmtxQmRkbDZXCkZ5dUtBaUFTekMrcDYxQk54VlFTYWhQaElQZ0djd3VUL0RmWEZqYUtnRjNDQTV1ajFBPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo=",
																				"organizational_unit_identifier": "peer"
																			}
																		},
																		"intermediate_certs": [],
																		"name": "DistributorMSP",
																		"organizational_unit_identifiers": [],
																		"revocation_list": [],
																		"root_certs": [
																			"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNZVENDQWdpZ0F3SUJBZ0lSQVAvdTZLRzlsVkQ5RDFSYTFjQUtJWjh3Q2dZSUtvWkl6ajBFQXdJd2V6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhIVEFiQmdOVkJBb1RGR1JwYzNSeWFXSjFkRzl5TG01aGJYb3VZMjl0TVNBd0hnWURWUVFECkV4ZGpZUzVrYVhOMGNtbGlkWFJ2Y2k1dVlXMTZMbU52YlRBZUZ3MHhPVEV3TWpNeU1EUTNNREJhRncweU9URXcKTWpBeU1EUTNNREJhTUhzeEN6QUpCZ05WQkFZVEFsVlRNUk13RVFZRFZRUUlFd3BEWVd4cFptOXlibWxoTVJZdwpGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVIwd0d3WURWUVFLRXhSa2FYTjBjbWxpZFhSdmNpNXVZVzE2CkxtTnZiVEVnTUI0R0ExVUVBeE1YWTJFdVpHbHpkSEpwWW5WMGIzSXVibUZ0ZWk1amIyMHdXVEFUQmdjcWhrak8KUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVI2NjFTRml4bDRRTjA2SVE0a2hUc2NHc2xnaXZPWWtUbUFTNUNlZldLRwoycmg0YzVYdURSalcwS1VvMEtvWjdvUDh0SVd1a1ArZ3FYUXR4NVdEUzExZG8yMHdhekFPQmdOVkhROEJBZjhFCkJBTUNBYVl3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BOEdBMVVkRXdFQi93UUYKTUFNQkFmOHdLUVlEVlIwT0JDSUVJR0NIbzV6MEhFOTFSbzkzckx3Y2ZzNFRSR0NacGZkNjFUdVBqRjhXM2xCZApNQW9HQ0NxR1NNNDlCQU1DQTBjQU1FUUNJQ0NJTHMxZFJHaHF5dmlqamM4TVJ0U0dtUGpCcVJkMmtxQmRkbDZXCkZ5dUtBaUFTekMrcDYxQk54VlFTYWhQaElQZ0djd3VUL0RmWEZqYUtnRjNDQTV1ajFBPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
																		],
																		"signing_identity": null,
																		"tls_intermediate_certs": [],
																		"tls_root_certs": [
																			"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNhRENDQWc2Z0F3SUJBZ0lSQUtjMm9nRFAvWEx6d1dxN05CVk1CNTR3Q2dZSUtvWkl6ajBFQXdJd2ZqRUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhIVEFiQmdOVkJBb1RGR1JwYzNSeWFXSjFkRzl5TG01aGJYb3VZMjl0TVNNd0lRWURWUVFECkV4cDBiSE5qWVM1a2FYTjBjbWxpZFhSdmNpNXVZVzE2TG1OdmJUQWVGdzB4T1RFd01qTXlNRFEzTURCYUZ3MHkKT1RFd01qQXlNRFEzTURCYU1INHhDekFKQmdOVkJBWVRBbFZUTVJNd0VRWURWUVFJRXdwRFlXeHBabTl5Ym1saApNUll3RkFZRFZRUUhFdzFUWVc0Z1JuSmhibU5wYzJOdk1SMHdHd1lEVlFRS0V4UmthWE4wY21saWRYUnZjaTV1CllXMTZMbU52YlRFak1DRUdBMVVFQXhNYWRHeHpZMkV1WkdsemRISnBZblYwYjNJdWJtRnRlaTVqYjIwd1dUQVQKQmdjcWhrak9QUUlCQmdncWhrak9QUU1CQndOQ0FBUnlwMWh1eG5hcmMvcnZxUG4vT2tDcVFwWEtzclF3ak9OVQpPdmRWU1RSbjJMSFVSN3kyeEZMYTkrT0lENHdLbk5TRk9YSHFSNENNd2ZuY3JPT3RTWXVYbzIwd2F6QU9CZ05WCkhROEJBZjhFQkFNQ0FhWXdIUVlEVlIwbEJCWXdGQVlJS3dZQkJRVUhBd0lHQ0NzR0FRVUZCd01CTUE4R0ExVWQKRXdFQi93UUZNQU1CQWY4d0tRWURWUjBPQkNJRUlDa0hBcnUxcTNOMVRUbjhLbzNjQVZqT282ck9ON0pjbEpwRQozYnY1SW5wcE1Bb0dDQ3FHU000OUJBTUNBMGdBTUVVQ0lRRFFEMUVoZ2dXcUx6YXkwbkNuUS9reVJXbEY1NVZnClVGY1hBYTdtWGV0eStRSWdLeFBrenZJQlZCelVBZUNLWWdERTEwOURMREpIS3FLNTU3WFlPdjVWZG5rPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
																		]
																	},
																	"type": 0
																},
																"version": "0"
															}
														},
														"version": "0"
													},
													"ManufacturerMSP": {
														"groups": {},
														"mod_policy": "Admins",
														"policies": {
															"Admins": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "ManufacturerMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															},
															"Readers": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "ManufacturerMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "ManufacturerMSP",
																					"role": "PEER"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "ManufacturerMSP",
																					"role": "CLIENT"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					},
																					{
																						"signed_by": 1
																					},
																					{
																						"signed_by": 2
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															},
															"Writers": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "ManufacturerMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "ManufacturerMSP",
																					"role": "CLIENT"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					},
																					{
																						"signed_by": 1
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															}
														},
														"values": {
															"MSP": {
																"mod_policy": "Admins",
																"value": {
																	"config": {
																		"admins": [],
																		"crypto_config": {
																			"identity_identifier_hash_function": "SHA256",
																			"signature_hash_family": "SHA2"
																		},
																		"fabric_node_ous": {
																			"admin_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNaVENDQWd1Z0F3SUJBZ0lRS013M0Zxa01uUmo2VGpCRUZPYVZzakFLQmdncWhrak9QUVFEQWpCOU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWVNQndHQTFVRUNoTVZiV0Z1ZFdaaFkzUjFjbVZ5TG01aGJYb3VZMjl0TVNFd0h3WURWUVFECkV4aGpZUzV0WVc1MVptRmpkSFZ5WlhJdWJtRnRlaTVqYjIwd0hoY05NVGt4TURJek1qQTBOekF3V2hjTk1qa3gKTURJd01qQTBOekF3V2pCOU1Rc3dDUVlEVlFRR0V3SlZVekVUTUJFR0ExVUVDQk1LUTJGc2FXWnZjbTVwWVRFVwpNQlFHQTFVRUJ4TU5VMkZ1SUVaeVlXNWphWE5qYnpFZU1Cd0dBMVVFQ2hNVmJXRnVkV1poWTNSMWNtVnlMbTVoCmJYb3VZMjl0TVNFd0h3WURWUVFERXhoallTNXRZVzUxWm1GamRIVnlaWEl1Ym1GdGVpNWpiMjB3V1RBVEJnY3EKaGtqT1BRSUJCZ2dxaGtqT1BRTUJCd05DQUFSaWs4Q2tINXNxV1dJUmVicDZGTW1XNnc3VTFpeVhiOEhHK0NsbAowcGpPK2VNZkVaOFo0cG5rVGNtM2RIbTVBYjJQWEltUlUvTUZGcTRoTnV3RlFobkdvMjB3YXpBT0JnTlZIUThCCkFmOEVCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIKL3dRRk1BTUJBZjh3S1FZRFZSME9CQ0lFSUZMZlNmNnVoa21KcFF0MUNXQVRXaXVIeHUzM2JlbDNTMHdJMWZGcgo0YU8zTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEQmIvZzdUVDFaZ1NveGg0ZW12Z254UnBpQjNTYlRwSmJ1CnVKb3kxTUEzbEFJZ0JJblJUa2JhQlVteHhEdVdUd1ZuakVPYkNGSHB4dGg5NVloV3Exc2RjNWc9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "admin"
																			},
																			"client_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNaVENDQWd1Z0F3SUJBZ0lRS013M0Zxa01uUmo2VGpCRUZPYVZzakFLQmdncWhrak9QUVFEQWpCOU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWVNQndHQTFVRUNoTVZiV0Z1ZFdaaFkzUjFjbVZ5TG01aGJYb3VZMjl0TVNFd0h3WURWUVFECkV4aGpZUzV0WVc1MVptRmpkSFZ5WlhJdWJtRnRlaTVqYjIwd0hoY05NVGt4TURJek1qQTBOekF3V2hjTk1qa3gKTURJd01qQTBOekF3V2pCOU1Rc3dDUVlEVlFRR0V3SlZVekVUTUJFR0ExVUVDQk1LUTJGc2FXWnZjbTVwWVRFVwpNQlFHQTFVRUJ4TU5VMkZ1SUVaeVlXNWphWE5qYnpFZU1Cd0dBMVVFQ2hNVmJXRnVkV1poWTNSMWNtVnlMbTVoCmJYb3VZMjl0TVNFd0h3WURWUVFERXhoallTNXRZVzUxWm1GamRIVnlaWEl1Ym1GdGVpNWpiMjB3V1RBVEJnY3EKaGtqT1BRSUJCZ2dxaGtqT1BRTUJCd05DQUFSaWs4Q2tINXNxV1dJUmVicDZGTW1XNnc3VTFpeVhiOEhHK0NsbAowcGpPK2VNZkVaOFo0cG5rVGNtM2RIbTVBYjJQWEltUlUvTUZGcTRoTnV3RlFobkdvMjB3YXpBT0JnTlZIUThCCkFmOEVCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIKL3dRRk1BTUJBZjh3S1FZRFZSME9CQ0lFSUZMZlNmNnVoa21KcFF0MUNXQVRXaXVIeHUzM2JlbDNTMHdJMWZGcgo0YU8zTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEQmIvZzdUVDFaZ1NveGg0ZW12Z254UnBpQjNTYlRwSmJ1CnVKb3kxTUEzbEFJZ0JJblJUa2JhQlVteHhEdVdUd1ZuakVPYkNGSHB4dGg5NVloV3Exc2RjNWc9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "client"
																			},
																			"enable": true,
																			"orderer_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNaVENDQWd1Z0F3SUJBZ0lRS013M0Zxa01uUmo2VGpCRUZPYVZzakFLQmdncWhrak9QUVFEQWpCOU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWVNQndHQTFVRUNoTVZiV0Z1ZFdaaFkzUjFjbVZ5TG01aGJYb3VZMjl0TVNFd0h3WURWUVFECkV4aGpZUzV0WVc1MVptRmpkSFZ5WlhJdWJtRnRlaTVqYjIwd0hoY05NVGt4TURJek1qQTBOekF3V2hjTk1qa3gKTURJd01qQTBOekF3V2pCOU1Rc3dDUVlEVlFRR0V3SlZVekVUTUJFR0ExVUVDQk1LUTJGc2FXWnZjbTVwWVRFVwpNQlFHQTFVRUJ4TU5VMkZ1SUVaeVlXNWphWE5qYnpFZU1Cd0dBMVVFQ2hNVmJXRnVkV1poWTNSMWNtVnlMbTVoCmJYb3VZMjl0TVNFd0h3WURWUVFERXhoallTNXRZVzUxWm1GamRIVnlaWEl1Ym1GdGVpNWpiMjB3V1RBVEJnY3EKaGtqT1BRSUJCZ2dxaGtqT1BRTUJCd05DQUFSaWs4Q2tINXNxV1dJUmVicDZGTW1XNnc3VTFpeVhiOEhHK0NsbAowcGpPK2VNZkVaOFo0cG5rVGNtM2RIbTVBYjJQWEltUlUvTUZGcTRoTnV3RlFobkdvMjB3YXpBT0JnTlZIUThCCkFmOEVCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIKL3dRRk1BTUJBZjh3S1FZRFZSME9CQ0lFSUZMZlNmNnVoa21KcFF0MUNXQVRXaXVIeHUzM2JlbDNTMHdJMWZGcgo0YU8zTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEQmIvZzdUVDFaZ1NveGg0ZW12Z254UnBpQjNTYlRwSmJ1CnVKb3kxTUEzbEFJZ0JJblJUa2JhQlVteHhEdVdUd1ZuakVPYkNGSHB4dGg5NVloV3Exc2RjNWc9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "orderer"
																			},
																			"peer_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNaVENDQWd1Z0F3SUJBZ0lRS013M0Zxa01uUmo2VGpCRUZPYVZzakFLQmdncWhrak9QUVFEQWpCOU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWVNQndHQTFVRUNoTVZiV0Z1ZFdaaFkzUjFjbVZ5TG01aGJYb3VZMjl0TVNFd0h3WURWUVFECkV4aGpZUzV0WVc1MVptRmpkSFZ5WlhJdWJtRnRlaTVqYjIwd0hoY05NVGt4TURJek1qQTBOekF3V2hjTk1qa3gKTURJd01qQTBOekF3V2pCOU1Rc3dDUVlEVlFRR0V3SlZVekVUTUJFR0ExVUVDQk1LUTJGc2FXWnZjbTVwWVRFVwpNQlFHQTFVRUJ4TU5VMkZ1SUVaeVlXNWphWE5qYnpFZU1Cd0dBMVVFQ2hNVmJXRnVkV1poWTNSMWNtVnlMbTVoCmJYb3VZMjl0TVNFd0h3WURWUVFERXhoallTNXRZVzUxWm1GamRIVnlaWEl1Ym1GdGVpNWpiMjB3V1RBVEJnY3EKaGtqT1BRSUJCZ2dxaGtqT1BRTUJCd05DQUFSaWs4Q2tINXNxV1dJUmVicDZGTW1XNnc3VTFpeVhiOEhHK0NsbAowcGpPK2VNZkVaOFo0cG5rVGNtM2RIbTVBYjJQWEltUlUvTUZGcTRoTnV3RlFobkdvMjB3YXpBT0JnTlZIUThCCkFmOEVCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIKL3dRRk1BTUJBZjh3S1FZRFZSME9CQ0lFSUZMZlNmNnVoa21KcFF0MUNXQVRXaXVIeHUzM2JlbDNTMHdJMWZGcgo0YU8zTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEQmIvZzdUVDFaZ1NveGg0ZW12Z254UnBpQjNTYlRwSmJ1CnVKb3kxTUEzbEFJZ0JJblJUa2JhQlVteHhEdVdUd1ZuakVPYkNGSHB4dGg5NVloV3Exc2RjNWc9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "peer"
																			}
																		},
																		"intermediate_certs": [],
																		"name": "ManufacturerMSP",
																		"organizational_unit_identifiers": [],
																		"revocation_list": [],
																		"root_certs": [
																			"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNaVENDQWd1Z0F3SUJBZ0lRS013M0Zxa01uUmo2VGpCRUZPYVZzakFLQmdncWhrak9QUVFEQWpCOU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWVNQndHQTFVRUNoTVZiV0Z1ZFdaaFkzUjFjbVZ5TG01aGJYb3VZMjl0TVNFd0h3WURWUVFECkV4aGpZUzV0WVc1MVptRmpkSFZ5WlhJdWJtRnRlaTVqYjIwd0hoY05NVGt4TURJek1qQTBOekF3V2hjTk1qa3gKTURJd01qQTBOekF3V2pCOU1Rc3dDUVlEVlFRR0V3SlZVekVUTUJFR0ExVUVDQk1LUTJGc2FXWnZjbTVwWVRFVwpNQlFHQTFVRUJ4TU5VMkZ1SUVaeVlXNWphWE5qYnpFZU1Cd0dBMVVFQ2hNVmJXRnVkV1poWTNSMWNtVnlMbTVoCmJYb3VZMjl0TVNFd0h3WURWUVFERXhoallTNXRZVzUxWm1GamRIVnlaWEl1Ym1GdGVpNWpiMjB3V1RBVEJnY3EKaGtqT1BRSUJCZ2dxaGtqT1BRTUJCd05DQUFSaWs4Q2tINXNxV1dJUmVicDZGTW1XNnc3VTFpeVhiOEhHK0NsbAowcGpPK2VNZkVaOFo0cG5rVGNtM2RIbTVBYjJQWEltUlUvTUZGcTRoTnV3RlFobkdvMjB3YXpBT0JnTlZIUThCCkFmOEVCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIKL3dRRk1BTUJBZjh3S1FZRFZSME9CQ0lFSUZMZlNmNnVoa21KcFF0MUNXQVRXaXVIeHUzM2JlbDNTMHdJMWZGcgo0YU8zTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEQmIvZzdUVDFaZ1NveGg0ZW12Z254UnBpQjNTYlRwSmJ1CnVKb3kxTUEzbEFJZ0JJblJUa2JhQlVteHhEdVdUd1ZuakVPYkNGSHB4dGg5NVloV3Exc2RjNWc9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
																		],
																		"signing_identity": null,
																		"tls_intermediate_certs": [],
																		"tls_root_certs": [
																			"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNiVENDQWhTZ0F3SUJBZ0lSQUtWUWY4OWh1aTgyWXhvQjNCV0Vmd0l3Q2dZSUtvWkl6ajBFQXdJd2dZQXgKQ3pBSkJnTlZCQVlUQWxWVE1STXdFUVlEVlFRSUV3cERZV3hwWm05eWJtbGhNUll3RkFZRFZRUUhFdzFUWVc0ZwpSbkpoYm1OcGMyTnZNUjR3SEFZRFZRUUtFeFZ0WVc1MVptRmpkSFZ5WlhJdWJtRnRlaTVqYjIweEpEQWlCZ05WCkJBTVRHM1JzYzJOaExtMWhiblZtWVdOMGRYSmxjaTV1WVcxNkxtTnZiVEFlRncweE9URXdNak15TURRM01EQmEKRncweU9URXdNakF5TURRM01EQmFNSUdBTVFzd0NRWURWUVFHRXdKVlV6RVRNQkVHQTFVRUNCTUtRMkZzYVdadgpjbTVwWVRFV01CUUdBMVVFQnhNTlUyRnVJRVp5WVc1amFYTmpiekVlTUJ3R0ExVUVDaE1WYldGdWRXWmhZM1IxCmNtVnlMbTVoYlhvdVkyOXRNU1F3SWdZRFZRUURFeHQwYkhOallTNXRZVzUxWm1GamRIVnlaWEl1Ym1GdGVpNWoKYjIwd1dUQVRCZ2NxaGtqT1BRSUJCZ2dxaGtqT1BRTUJCd05DQUFTbHczUmVpcTBGajhCQnZvSE55TzJkUkcyRwpuenF5VjlBc1JUWHowQS9ROTlqTkJUaDFDeXlWRzNCRGxCN2NNSGdLaDlwVVc0c3cxcWJ6U01KN1dVbDNvMjB3CmF6QU9CZ05WSFE4QkFmOEVCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUIKTUE4R0ExVWRFd0VCL3dRRk1BTUJBZjh3S1FZRFZSME9CQ0lFSUt4TnF0RDI2WE96SWZtbzQzMmUxeHk1Q0NXUgpWVlZPNVBBNEprUWFzckx1TUFvR0NDcUdTTTQ5QkFNQ0EwY0FNRVFDSUZCQmlwZTRlQmxtSjEwRmcxRndrYTJFCnFIOXlXY0tZTG5Jb0JZUm96bFhzQWlCTTByTmlsWXBhMHo1NFRJMURTRFMxc2pvVmVpNmxPc2JrZk5BbTJySGMKZ0E9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
																		]
																	},
																	"type": 0
																},
																"version": "0"
															}
														},
														"version": "0"
													},
													"SupplierMSP": {
														"groups": {},
														"mod_policy": "Admins",
														"policies": {
															"Admins": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "SupplierMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															},
															"Readers": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "SupplierMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "SupplierMSP",
																					"role": "PEER"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "SupplierMSP",
																					"role": "CLIENT"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					},
																					{
																						"signed_by": 1
																					},
																					{
																						"signed_by": 2
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															},
															"Writers": {
																"mod_policy": "Admins",
																"policy": {
																	"type": 1,
																	"value": {
																		"identities": [
																			{
																				"principal": {
																					"msp_identifier": "SupplierMSP",
																					"role": "ADMIN"
																				},
																				"principal_classification": "ROLE"
																			},
																			{
																				"principal": {
																					"msp_identifier": "SupplierMSP",
																					"role": "CLIENT"
																				},
																				"principal_classification": "ROLE"
																			}
																		],
																		"rule": {
																			"n_out_of": {
																				"n": 1,
																				"rules": [
																					{
																						"signed_by": 0
																					},
																					{
																						"signed_by": 1
																					}
																				]
																			}
																		},
																		"version": 0
																	}
																},
																"version": "0"
															}
														},
														"values": {
															"MSP": {
																"mod_policy": "Admins",
																"value": {
																	"config": {
																		"admins": [],
																		"crypto_config": {
																			"identity_identifier_hash_function": "SHA256",
																			"signature_hash_family": "SHA2"
																		},
																		"fabric_node_ous": {
																			"admin_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNWRENDQWZ1Z0F3SUJBZ0lRUXVrMG0ybU8xV2ZEcWR3OUZtNGxqekFLQmdncWhrak9QUVFEQWpCMU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWFNQmdHQTFVRUNoTVJjM1Z3Y0d4cFpYSXVibUZ0ZWk1amIyMHhIVEFiQmdOVkJBTVRGR05oCkxuTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1CNFhEVEU1TVRBeU16SXdORGN3TUZvWERUSTVNVEF5TURJd05EY3cKTUZvd2RURUxNQWtHQTFVRUJoTUNWVk14RXpBUkJnTlZCQWdUQ2tOaGJHbG1iM0p1YVdFeEZqQVVCZ05WQkFjVApEVk5oYmlCR2NtRnVZMmx6WTI4eEdqQVlCZ05WQkFvVEVYTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1SMHdHd1lEClZRUURFeFJqWVM1emRYQndiR2xsY2k1dVlXMTZMbU52YlRCWk1CTUdCeXFHU000OUFnRUdDQ3FHU000OUF3RUgKQTBJQUJGZnIxYXlGM0phVzNPUXNPai9OeUNFaWQ3a2Q5WXN1MUplazRpRlBHKzZGamFhaW93UDBMMjBNTGtpOQpMTVRlcW5OZEpoZGx0Q2RENVFFTTA3K25FZU9qYlRCck1BNEdBMVVkRHdFQi93UUVBd0lCcGpBZEJnTlZIU1VFCkZqQVVCZ2dyQmdFRkJRY0RBZ1lJS3dZQkJRVUhBd0V3RHdZRFZSMFRBUUgvQkFVd0F3RUIvekFwQmdOVkhRNEUKSWdRZzZTZ3lWV1h2MzZFemlLMGhNL3VUWFlxVXhmRm5SSS9KMThhZVZSMnlqNk13Q2dZSUtvWkl6ajBFQXdJRApSd0F3UkFJZ1lsWkRPTG94WEQweVdUWndSbmVjS1p5cEN0OXVVaGwvNDhjS1d4OHFyU0VDSUZhdWhsUUNKa2JxCldMUExXMnE1WWtMK0NWM1EwdDFRcXRkVkJ4c2w3U3FxCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "admin"
																			},
																			"client_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNWRENDQWZ1Z0F3SUJBZ0lRUXVrMG0ybU8xV2ZEcWR3OUZtNGxqekFLQmdncWhrak9QUVFEQWpCMU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWFNQmdHQTFVRUNoTVJjM1Z3Y0d4cFpYSXVibUZ0ZWk1amIyMHhIVEFiQmdOVkJBTVRGR05oCkxuTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1CNFhEVEU1TVRBeU16SXdORGN3TUZvWERUSTVNVEF5TURJd05EY3cKTUZvd2RURUxNQWtHQTFVRUJoTUNWVk14RXpBUkJnTlZCQWdUQ2tOaGJHbG1iM0p1YVdFeEZqQVVCZ05WQkFjVApEVk5oYmlCR2NtRnVZMmx6WTI4eEdqQVlCZ05WQkFvVEVYTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1SMHdHd1lEClZRUURFeFJqWVM1emRYQndiR2xsY2k1dVlXMTZMbU52YlRCWk1CTUdCeXFHU000OUFnRUdDQ3FHU000OUF3RUgKQTBJQUJGZnIxYXlGM0phVzNPUXNPai9OeUNFaWQ3a2Q5WXN1MUplazRpRlBHKzZGamFhaW93UDBMMjBNTGtpOQpMTVRlcW5OZEpoZGx0Q2RENVFFTTA3K25FZU9qYlRCck1BNEdBMVVkRHdFQi93UUVBd0lCcGpBZEJnTlZIU1VFCkZqQVVCZ2dyQmdFRkJRY0RBZ1lJS3dZQkJRVUhBd0V3RHdZRFZSMFRBUUgvQkFVd0F3RUIvekFwQmdOVkhRNEUKSWdRZzZTZ3lWV1h2MzZFemlLMGhNL3VUWFlxVXhmRm5SSS9KMThhZVZSMnlqNk13Q2dZSUtvWkl6ajBFQXdJRApSd0F3UkFJZ1lsWkRPTG94WEQweVdUWndSbmVjS1p5cEN0OXVVaGwvNDhjS1d4OHFyU0VDSUZhdWhsUUNKa2JxCldMUExXMnE1WWtMK0NWM1EwdDFRcXRkVkJ4c2w3U3FxCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "client"
																			},
																			"enable": true,
																			"orderer_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNWRENDQWZ1Z0F3SUJBZ0lRUXVrMG0ybU8xV2ZEcWR3OUZtNGxqekFLQmdncWhrak9QUVFEQWpCMU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWFNQmdHQTFVRUNoTVJjM1Z3Y0d4cFpYSXVibUZ0ZWk1amIyMHhIVEFiQmdOVkJBTVRGR05oCkxuTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1CNFhEVEU1TVRBeU16SXdORGN3TUZvWERUSTVNVEF5TURJd05EY3cKTUZvd2RURUxNQWtHQTFVRUJoTUNWVk14RXpBUkJnTlZCQWdUQ2tOaGJHbG1iM0p1YVdFeEZqQVVCZ05WQkFjVApEVk5oYmlCR2NtRnVZMmx6WTI4eEdqQVlCZ05WQkFvVEVYTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1SMHdHd1lEClZRUURFeFJqWVM1emRYQndiR2xsY2k1dVlXMTZMbU52YlRCWk1CTUdCeXFHU000OUFnRUdDQ3FHU000OUF3RUgKQTBJQUJGZnIxYXlGM0phVzNPUXNPai9OeUNFaWQ3a2Q5WXN1MUplazRpRlBHKzZGamFhaW93UDBMMjBNTGtpOQpMTVRlcW5OZEpoZGx0Q2RENVFFTTA3K25FZU9qYlRCck1BNEdBMVVkRHdFQi93UUVBd0lCcGpBZEJnTlZIU1VFCkZqQVVCZ2dyQmdFRkJRY0RBZ1lJS3dZQkJRVUhBd0V3RHdZRFZSMFRBUUgvQkFVd0F3RUIvekFwQmdOVkhRNEUKSWdRZzZTZ3lWV1h2MzZFemlLMGhNL3VUWFlxVXhmRm5SSS9KMThhZVZSMnlqNk13Q2dZSUtvWkl6ajBFQXdJRApSd0F3UkFJZ1lsWkRPTG94WEQweVdUWndSbmVjS1p5cEN0OXVVaGwvNDhjS1d4OHFyU0VDSUZhdWhsUUNKa2JxCldMUExXMnE1WWtMK0NWM1EwdDFRcXRkVkJ4c2w3U3FxCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "orderer"
																			},
																			"peer_ou_identifier": {
																				"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNWRENDQWZ1Z0F3SUJBZ0lRUXVrMG0ybU8xV2ZEcWR3OUZtNGxqekFLQmdncWhrak9QUVFEQWpCMU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWFNQmdHQTFVRUNoTVJjM1Z3Y0d4cFpYSXVibUZ0ZWk1amIyMHhIVEFiQmdOVkJBTVRGR05oCkxuTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1CNFhEVEU1TVRBeU16SXdORGN3TUZvWERUSTVNVEF5TURJd05EY3cKTUZvd2RURUxNQWtHQTFVRUJoTUNWVk14RXpBUkJnTlZCQWdUQ2tOaGJHbG1iM0p1YVdFeEZqQVVCZ05WQkFjVApEVk5oYmlCR2NtRnVZMmx6WTI4eEdqQVlCZ05WQkFvVEVYTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1SMHdHd1lEClZRUURFeFJqWVM1emRYQndiR2xsY2k1dVlXMTZMbU52YlRCWk1CTUdCeXFHU000OUFnRUdDQ3FHU000OUF3RUgKQTBJQUJGZnIxYXlGM0phVzNPUXNPai9OeUNFaWQ3a2Q5WXN1MUplazRpRlBHKzZGamFhaW93UDBMMjBNTGtpOQpMTVRlcW5OZEpoZGx0Q2RENVFFTTA3K25FZU9qYlRCck1BNEdBMVVkRHdFQi93UUVBd0lCcGpBZEJnTlZIU1VFCkZqQVVCZ2dyQmdFRkJRY0RBZ1lJS3dZQkJRVUhBd0V3RHdZRFZSMFRBUUgvQkFVd0F3RUIvekFwQmdOVkhRNEUKSWdRZzZTZ3lWV1h2MzZFemlLMGhNL3VUWFlxVXhmRm5SSS9KMThhZVZSMnlqNk13Q2dZSUtvWkl6ajBFQXdJRApSd0F3UkFJZ1lsWkRPTG94WEQweVdUWndSbmVjS1p5cEN0OXVVaGwvNDhjS1d4OHFyU0VDSUZhdWhsUUNKa2JxCldMUExXMnE1WWtMK0NWM1EwdDFRcXRkVkJ4c2w3U3FxCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																				"organizational_unit_identifier": "peer"
																			}
																		},
																		"intermediate_certs": [],
																		"name": "SupplierMSP",
																		"organizational_unit_identifiers": [],
																		"revocation_list": [],
																		"root_certs": [
																			"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNWRENDQWZ1Z0F3SUJBZ0lRUXVrMG0ybU8xV2ZEcWR3OUZtNGxqekFLQmdncWhrak9QUVFEQWpCMU1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWFNQmdHQTFVRUNoTVJjM1Z3Y0d4cFpYSXVibUZ0ZWk1amIyMHhIVEFiQmdOVkJBTVRGR05oCkxuTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1CNFhEVEU1TVRBeU16SXdORGN3TUZvWERUSTVNVEF5TURJd05EY3cKTUZvd2RURUxNQWtHQTFVRUJoTUNWVk14RXpBUkJnTlZCQWdUQ2tOaGJHbG1iM0p1YVdFeEZqQVVCZ05WQkFjVApEVk5oYmlCR2NtRnVZMmx6WTI4eEdqQVlCZ05WQkFvVEVYTjFjSEJzYVdWeUxtNWhiWG91WTI5dE1SMHdHd1lEClZRUURFeFJqWVM1emRYQndiR2xsY2k1dVlXMTZMbU52YlRCWk1CTUdCeXFHU000OUFnRUdDQ3FHU000OUF3RUgKQTBJQUJGZnIxYXlGM0phVzNPUXNPai9OeUNFaWQ3a2Q5WXN1MUplazRpRlBHKzZGamFhaW93UDBMMjBNTGtpOQpMTVRlcW5OZEpoZGx0Q2RENVFFTTA3K25FZU9qYlRCck1BNEdBMVVkRHdFQi93UUVBd0lCcGpBZEJnTlZIU1VFCkZqQVVCZ2dyQmdFRkJRY0RBZ1lJS3dZQkJRVUhBd0V3RHdZRFZSMFRBUUgvQkFVd0F3RUIvekFwQmdOVkhRNEUKSWdRZzZTZ3lWV1h2MzZFemlLMGhNL3VUWFlxVXhmRm5SSS9KMThhZVZSMnlqNk13Q2dZSUtvWkl6ajBFQXdJRApSd0F3UkFJZ1lsWkRPTG94WEQweVdUWndSbmVjS1p5cEN0OXVVaGwvNDhjS1d4OHFyU0VDSUZhdWhsUUNKa2JxCldMUExXMnE1WWtMK0NWM1EwdDFRcXRkVkJ4c2w3U3FxCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
																		],
																		"signing_identity": null,
																		"tls_intermediate_certs": [],
																		"tls_root_certs": [
																			"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNXakNDQWdHZ0F3SUJBZ0lRWjU0b0JZcDZSck9MdmVDUUFwbVFKakFLQmdncWhrak9QUVFEQWpCNE1Rc3cKQ1FZRFZRUUdFd0pWVXpFVE1CRUdBMVVFQ0JNS1EyRnNhV1p2Y201cFlURVdNQlFHQTFVRUJ4TU5VMkZ1SUVaeQpZVzVqYVhOamJ6RWFNQmdHQTFVRUNoTVJjM1Z3Y0d4cFpYSXVibUZ0ZWk1amIyMHhJREFlQmdOVkJBTVRGM1JzCmMyTmhMbk4xY0hCc2FXVnlMbTVoYlhvdVkyOXRNQjRYRFRFNU1UQXlNekl3TkRjd01Gb1hEVEk1TVRBeU1ESXcKTkRjd01Gb3dlREVMTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVgpCQWNURFZOaGJpQkdjbUZ1WTJselkyOHhHakFZQmdOVkJBb1RFWE4xY0hCc2FXVnlMbTVoYlhvdVkyOXRNU0F3CkhnWURWUVFERXhkMGJITmpZUzV6ZFhCd2JHbGxjaTV1WVcxNkxtTnZiVEJaTUJNR0J5cUdTTTQ5QWdFR0NDcUcKU000OUF3RUhBMElBQkx2ZEF4MDEyZWttQXJMTnNyWTdYOHhkTW1SWWdyUXdSQzNpZE00NXBsU2JiWXdPMENGVApSNVNmTStFa0lGQ1VXb3JhQ1lYQ0RzSkpoeTlyUGNFMEhHeWpiVEJyTUE0R0ExVWREd0VCL3dRRUF3SUJwakFkCkJnTlZIU1VFRmpBVUJnZ3JCZ0VGQlFjREFnWUlLd1lCQlFVSEF3RXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QXAKQmdOVkhRNEVJZ1FnTXhqRjZQS2RWRzh3Q283a0VKeFRJbTh3MXpCUk8zRGMvTnVrSk1vRVF4OHdDZ1lJS29aSQp6ajBFQXdJRFJ3QXdSQUlnRzlCNFFSTk14dEliUDl2Y1lCM3RRK3JSRW16YUxjUUF3dlA0ekFPZUlKa0NJR2JNClRLclB4YmNQNDhXdWw3cEoxdWZhVW1RRlNzcDhSWElVS3Bla1ZkREIKLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
																		]
																	},
																	"type": 0
																},
																"version": "0"
															}
														},
														"version": "0"
													}
												},
												"mod_policy": "/Channel/Orderer/Admins",
												"policies": {},
												"values": {
													"ChannelCreationPolicy": {
														"mod_policy": "/Channel/Orderer/Admins",
														"value": {
															"type": 3,
															"value": {
																"rule": "ANY",
																"sub_policy": "Admins"
															}
														},
														"version": "0"
													}
												},
												"version": "0"
											}
										},
										"mod_policy": "/Channel/Orderer/Admins",
										"policies": {
											"Admins": {
												"mod_policy": "/Channel/Orderer/Admins",
												"policy": {
													"type": 1,
													"value": {
														"identities": [],
														"rule": {
															"n_out_of": {
																"n": 0,
																"rules": []
															}
														},
														"version": 0
													}
												},
												"version": "0"
											}
										},
										"values": {},
										"version": "0"
									},
									"Orderer": {
										"groups": {
											"OrdererOrg": {
												"groups": {},
												"mod_policy": "Admins",
												"policies": {
													"Admins": {
														"mod_policy": "Admins",
														"policy": {
															"type": 1,
															"value": {
																"identities": [
																	{
																		"principal": {
																			"msp_identifier": "OrdererMSP",
																			"role": "ADMIN"
																		},
																		"principal_classification": "ROLE"
																	}
																],
																"rule": {
																	"n_out_of": {
																		"n": 1,
																		"rules": [
																			{
																				"signed_by": 0
																			}
																		]
																	}
																},
																"version": 0
															}
														},
														"version": "0"
													},
													"Readers": {
														"mod_policy": "Admins",
														"policy": {
															"type": 1,
															"value": {
																"identities": [
																	{
																		"principal": {
																			"msp_identifier": "OrdererMSP",
																			"role": "MEMBER"
																		},
																		"principal_classification": "ROLE"
																	}
																],
																"rule": {
																	"n_out_of": {
																		"n": 1,
																		"rules": [
																			{
																				"signed_by": 0
																			}
																		]
																	}
																},
																"version": 0
															}
														},
														"version": "0"
													},
													"Writers": {
														"mod_policy": "Admins",
														"policy": {
															"type": 1,
															"value": {
																"identities": [
																	{
																		"principal": {
																			"msp_identifier": "OrdererMSP",
																			"role": "MEMBER"
																		},
																		"principal_classification": "ROLE"
																	}
																],
																"rule": {
																	"n_out_of": {
																		"n": 1,
																		"rules": [
																			{
																				"signed_by": 0
																			}
																		]
																	}
																},
																"version": 0
															}
														},
														"version": "0"
													}
												},
												"values": {
													"MSP": {
														"mod_policy": "Admins",
														"value": {
															"config": {
																"admins": [],
																"crypto_config": {
																	"identity_identifier_hash_function": "SHA256",
																	"signature_hash_family": "SHA2"
																},
																"fabric_node_ous": {
																	"admin_ou_identifier": {
																		"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNNakNDQWRpZ0F3SUJBZ0lSQU1udDdQNVJCZmgyQmx4MllUUTlockF3Q2dZSUtvWkl6ajBFQXdJd1l6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhFVEFQQmdOVkJBb1RDRzVoYlhvdVkyOXRNUlF3RWdZRFZRUURFd3RqWVM1dVlXMTZMbU52CmJUQWVGdzB4T1RFd01qTXlNRFEzTURCYUZ3MHlPVEV3TWpBeU1EUTNNREJhTUdNeEN6QUpCZ05WQkFZVEFsVlQKTVJNd0VRWURWUVFJRXdwRFlXeHBabTl5Ym1saE1SWXdGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVJFdwpEd1lEVlFRS0V3aHVZVzE2TG1OdmJURVVNQklHQTFVRUF4TUxZMkV1Ym1GdGVpNWpiMjB3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUWlk1Z2dYZENIUGtKZ1ZZcFBSSytCV0JnUjZhRTd6V0lrTVZ5L1U0cmsKR0RHcFU1alFWeHhVNDRORysxMXVZUlRaZDlWNlhlUG1PMi9hazB5ZHJsdHlvMjB3YXpBT0JnTlZIUThCQWY4RQpCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIvd1FGCk1BTUJBZjh3S1FZRFZSME9CQ0lFSUprbFhtU2Jva2VEVkhiRlZlbjJwWWlQMlNhTTN3Y09kSDRvWVduNktldGQKTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEZ256bldVZGhudlBQR1VJRjV5MU8wODgzK1JSVzZMYXNFS0lGagpTZm1EckFJZ0RjZWYzaTNlT3Z5cDZ5S3NIbE9IaGNQNktCTTFIL2RRRndWNXQ1Vm5mT0k9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																		"organizational_unit_identifier": "admin"
																	},
																	"client_ou_identifier": {
																		"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNNakNDQWRpZ0F3SUJBZ0lSQU1udDdQNVJCZmgyQmx4MllUUTlockF3Q2dZSUtvWkl6ajBFQXdJd1l6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhFVEFQQmdOVkJBb1RDRzVoYlhvdVkyOXRNUlF3RWdZRFZRUURFd3RqWVM1dVlXMTZMbU52CmJUQWVGdzB4T1RFd01qTXlNRFEzTURCYUZ3MHlPVEV3TWpBeU1EUTNNREJhTUdNeEN6QUpCZ05WQkFZVEFsVlQKTVJNd0VRWURWUVFJRXdwRFlXeHBabTl5Ym1saE1SWXdGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVJFdwpEd1lEVlFRS0V3aHVZVzE2TG1OdmJURVVNQklHQTFVRUF4TUxZMkV1Ym1GdGVpNWpiMjB3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUWlk1Z2dYZENIUGtKZ1ZZcFBSSytCV0JnUjZhRTd6V0lrTVZ5L1U0cmsKR0RHcFU1alFWeHhVNDRORysxMXVZUlRaZDlWNlhlUG1PMi9hazB5ZHJsdHlvMjB3YXpBT0JnTlZIUThCQWY4RQpCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIvd1FGCk1BTUJBZjh3S1FZRFZSME9CQ0lFSUprbFhtU2Jva2VEVkhiRlZlbjJwWWlQMlNhTTN3Y09kSDRvWVduNktldGQKTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEZ256bldVZGhudlBQR1VJRjV5MU8wODgzK1JSVzZMYXNFS0lGagpTZm1EckFJZ0RjZWYzaTNlT3Z5cDZ5S3NIbE9IaGNQNktCTTFIL2RRRndWNXQ1Vm5mT0k9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																		"organizational_unit_identifier": "client"
																	},
																	"enable": true,
																	"orderer_ou_identifier": {
																		"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNNakNDQWRpZ0F3SUJBZ0lSQU1udDdQNVJCZmgyQmx4MllUUTlockF3Q2dZSUtvWkl6ajBFQXdJd1l6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhFVEFQQmdOVkJBb1RDRzVoYlhvdVkyOXRNUlF3RWdZRFZRUURFd3RqWVM1dVlXMTZMbU52CmJUQWVGdzB4T1RFd01qTXlNRFEzTURCYUZ3MHlPVEV3TWpBeU1EUTNNREJhTUdNeEN6QUpCZ05WQkFZVEFsVlQKTVJNd0VRWURWUVFJRXdwRFlXeHBabTl5Ym1saE1SWXdGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVJFdwpEd1lEVlFRS0V3aHVZVzE2TG1OdmJURVVNQklHQTFVRUF4TUxZMkV1Ym1GdGVpNWpiMjB3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUWlk1Z2dYZENIUGtKZ1ZZcFBSSytCV0JnUjZhRTd6V0lrTVZ5L1U0cmsKR0RHcFU1alFWeHhVNDRORysxMXVZUlRaZDlWNlhlUG1PMi9hazB5ZHJsdHlvMjB3YXpBT0JnTlZIUThCQWY4RQpCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIvd1FGCk1BTUJBZjh3S1FZRFZSME9CQ0lFSUprbFhtU2Jva2VEVkhiRlZlbjJwWWlQMlNhTTN3Y09kSDRvWVduNktldGQKTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEZ256bldVZGhudlBQR1VJRjV5MU8wODgzK1JSVzZMYXNFS0lGagpTZm1EckFJZ0RjZWYzaTNlT3Z5cDZ5S3NIbE9IaGNQNktCTTFIL2RRRndWNXQ1Vm5mT0k9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																		"organizational_unit_identifier": "orderer"
																	},
																	"peer_ou_identifier": {
																		"certificate": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNNakNDQWRpZ0F3SUJBZ0lSQU1udDdQNVJCZmgyQmx4MllUUTlockF3Q2dZSUtvWkl6ajBFQXdJd1l6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhFVEFQQmdOVkJBb1RDRzVoYlhvdVkyOXRNUlF3RWdZRFZRUURFd3RqWVM1dVlXMTZMbU52CmJUQWVGdzB4T1RFd01qTXlNRFEzTURCYUZ3MHlPVEV3TWpBeU1EUTNNREJhTUdNeEN6QUpCZ05WQkFZVEFsVlQKTVJNd0VRWURWUVFJRXdwRFlXeHBabTl5Ym1saE1SWXdGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVJFdwpEd1lEVlFRS0V3aHVZVzE2TG1OdmJURVVNQklHQTFVRUF4TUxZMkV1Ym1GdGVpNWpiMjB3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUWlk1Z2dYZENIUGtKZ1ZZcFBSSytCV0JnUjZhRTd6V0lrTVZ5L1U0cmsKR0RHcFU1alFWeHhVNDRORysxMXVZUlRaZDlWNlhlUG1PMi9hazB5ZHJsdHlvMjB3YXpBT0JnTlZIUThCQWY4RQpCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIvd1FGCk1BTUJBZjh3S1FZRFZSME9CQ0lFSUprbFhtU2Jva2VEVkhiRlZlbjJwWWlQMlNhTTN3Y09kSDRvWVduNktldGQKTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEZ256bldVZGhudlBQR1VJRjV5MU8wODgzK1JSVzZMYXNFS0lGagpTZm1EckFJZ0RjZWYzaTNlT3Z5cDZ5S3NIbE9IaGNQNktCTTFIL2RRRndWNXQ1Vm5mT0k9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
																		"organizational_unit_identifier": "peer"
																	}
																},
																"intermediate_certs": [],
																"name": "OrdererMSP",
																"organizational_unit_identifiers": [],
																"revocation_list": [],
																"root_certs": [
																	"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNNakNDQWRpZ0F3SUJBZ0lSQU1udDdQNVJCZmgyQmx4MllUUTlockF3Q2dZSUtvWkl6ajBFQXdJd1l6RUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhFVEFQQmdOVkJBb1RDRzVoYlhvdVkyOXRNUlF3RWdZRFZRUURFd3RqWVM1dVlXMTZMbU52CmJUQWVGdzB4T1RFd01qTXlNRFEzTURCYUZ3MHlPVEV3TWpBeU1EUTNNREJhTUdNeEN6QUpCZ05WQkFZVEFsVlQKTVJNd0VRWURWUVFJRXdwRFlXeHBabTl5Ym1saE1SWXdGQVlEVlFRSEV3MVRZVzRnUm5KaGJtTnBjMk52TVJFdwpEd1lEVlFRS0V3aHVZVzE2TG1OdmJURVVNQklHQTFVRUF4TUxZMkV1Ym1GdGVpNWpiMjB3V1RBVEJnY3Foa2pPClBRSUJCZ2dxaGtqT1BRTUJCd05DQUFUWlk1Z2dYZENIUGtKZ1ZZcFBSSytCV0JnUjZhRTd6V0lrTVZ5L1U0cmsKR0RHcFU1alFWeHhVNDRORysxMXVZUlRaZDlWNlhlUG1PMi9hazB5ZHJsdHlvMjB3YXpBT0JnTlZIUThCQWY4RQpCQU1DQWFZd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUJNQThHQTFVZEV3RUIvd1FGCk1BTUJBZjh3S1FZRFZSME9CQ0lFSUprbFhtU2Jva2VEVkhiRlZlbjJwWWlQMlNhTTN3Y09kSDRvWVduNktldGQKTUFvR0NDcUdTTTQ5QkFNQ0EwZ0FNRVVDSVFEZ256bldVZGhudlBQR1VJRjV5MU8wODgzK1JSVzZMYXNFS0lGagpTZm1EckFJZ0RjZWYzaTNlT3Z5cDZ5S3NIbE9IaGNQNktCTTFIL2RRRndWNXQ1Vm5mT0k9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
																],
																"signing_identity": null,
																"tls_intermediate_certs": [],
																"tls_root_certs": [
																	"LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUNOekNDQWQ2Z0F3SUJBZ0lSQUxEc2FreEZYTys2NUZMTDRtMTVzV2t3Q2dZSUtvWkl6ajBFQXdJd1pqRUwKTUFrR0ExVUVCaE1DVlZNeEV6QVJCZ05WQkFnVENrTmhiR2xtYjNKdWFXRXhGakFVQmdOVkJBY1REVk5oYmlCRwpjbUZ1WTJselkyOHhFVEFQQmdOVkJBb1RDRzVoYlhvdVkyOXRNUmN3RlFZRFZRUURFdzUwYkhOallTNXVZVzE2CkxtTnZiVEFlRncweE9URXdNak15TURRM01EQmFGdzB5T1RFd01qQXlNRFEzTURCYU1HWXhDekFKQmdOVkJBWVQKQWxWVE1STXdFUVlEVlFRSUV3cERZV3hwWm05eWJtbGhNUll3RkFZRFZRUUhFdzFUWVc0Z1JuSmhibU5wYzJOdgpNUkV3RHdZRFZRUUtFd2h1WVcxNkxtTnZiVEVYTUJVR0ExVUVBeE1PZEd4elkyRXVibUZ0ZWk1amIyMHdXVEFUCkJnY3Foa2pPUFFJQkJnZ3Foa2pPUFFNQkJ3TkNBQVNOZk1hWWZOTm0zUWVlaThaS2J4UzBwRm1UczgrUDNUYloKZGM1NlFuQ2duSzBSTEZ5ZEhaaUZURkNjRW5seWllU3JRQTFFais5ekNyM05XSVlpZVdxbm8yMHdhekFPQmdOVgpIUThCQWY4RUJBTUNBYVl3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BOEdBMVVkCkV3RUIvd1FGTUFNQkFmOHdLUVlEVlIwT0JDSUVJSVVWckZ2ZTZKeW42cnBoZ0thQ1JDZDJCSjZPWlJSYlYzaDUKZjNuWFlwQ2FNQW9HQ0NxR1NNNDlCQU1DQTBjQU1FUUNJRnd2eVNYd0x3NnpwU1FnZ3AzeWlsSm1zWmxTVFlUawpBZFNLdHFkOFBDOXhBaUIzN0w0aFp0aHRBN3piOVc1NDlXRHVpTDRhQVJWQ2tXSFpXN1BDMFZaSVFnPT0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="
																]
															},
															"type": 0
														},
														"version": "0"
													}
												},
												"version": "0"
											}
										},
										"mod_policy": "Admins",
										"policies": {
											"Admins": {
												"mod_policy": "Admins",
												"policy": {
													"type": 3,
													"value": {
														"rule": "MAJORITY",
														"sub_policy": "Admins"
													}
												},
												"version": "0"
											},
											"BlockValidation": {
												"mod_policy": "Admins",
												"policy": {
													"type": 3,
													"value": {
														"rule": "ANY",
														"sub_policy": "Writers"
													}
												},
												"version": "0"
											},
											"Readers": {
												"mod_policy": "Admins",
												"policy": {
													"type": 3,
													"value": {
														"rule": "ANY",
														"sub_policy": "Readers"
													}
												},
												"version": "0"
											},
											"Writers": {
												"mod_policy": "Admins",
												"policy": {
													"type": 3,
													"value": {
														"rule": "ANY",
														"sub_policy": "Writers"
													}
												},
												"version": "0"
											}
										},
										"values": {
											"BatchSize": {
												"mod_policy": "Admins",
												"value": {
													"absolute_max_bytes": 103809024,
													"max_message_count": 10,
													"preferred_max_bytes": 524288
												},
												"version": "0"
											},
											"BatchTimeout": {
												"mod_policy": "Admins",
												"value": {
													"timeout": "1s"
												},
												"version": "0"
											},
											"Capabilities": {
												"mod_policy": "Admins",
												"value": {
													"capabilities": {
														"V1_4_2": {}
													}
												},
												"version": "0"
											},
											"ChannelRestrictions": {
												"mod_policy": "Admins",
												"value": null,
												"version": "0"
											},
											"ConsensusType": {
												"mod_policy": "Admins",
												"value": {
													"metadata": null,
													"state": "STATE_NORMAL",
													"type": "solo"
												},
												"version": "0"
											}
										},
										"version": "0"
									}
								},
								"mod_policy": "Admins",
								"policies": {
									"Admins": {
										"mod_policy": "Admins",
										"policy": {
											"type": 3,
											"value": {
												"rule": "MAJORITY",
												"sub_policy": "Admins"
											}
										},
										"version": "0"
									},
									"Readers": {
										"mod_policy": "Admins",
										"policy": {
											"type": 3,
											"value": {
												"rule": "ANY",
												"sub_policy": "Readers"
											}
										},
										"version": "0"
									},
									"Writers": {
										"mod_policy": "Admins",
										"policy": {
											"type": 3,
											"value": {
												"rule": "ANY",
												"sub_policy": "Writers"
											}
										},
										"version": "0"
									}
								},
								"values": {
									"BlockDataHashingStructure": {
										"mod_policy": "Admins",
										"value": {
											"width": 4294967295
										},
										"version": "0"
									},
									"Capabilities": {
										"mod_policy": "Admins",
										"value": {
											"capabilities": {
												"V1_4_3": {}
											}
										},
										"version": "0"
									},
									"HashingAlgorithm": {
										"mod_policy": "Admins",
										"value": {
											"name": "SHA256"
										},
										"version": "0"
									},
									"OrdererAddresses": {
										"mod_policy": "/Channel/Orderer/Admins",
										"value": {
											"addresses": [
												"orderer.namz.com:7050"
											]
										},
										"version": "0"
									}
								},
								"version": "0"
							},
							"sequence": "0"
						},
						"last_update": null
					},
					"header": {
						"channel_header": {
							"channel_id": "namz-sys-channel",
							"epoch": "0",
							"extension": null,
							"timestamp": "2019-10-23T20:52:27Z",
							"tls_cert_hash": null,
							"tx_id": "76db5dea540b56cf73b52ca45f776344e3e2d4e93d7ec24d5aa76d15f7979a1e",
							"type": 1,
							"version": 1
						},
						"signature_header": {
							"creator": null,
							"nonce": "ydTE5BMPGogl/wjvAk7zOQeP0upUqJKy"
						}
					}
				},
				"signature": null
			}
		]
	},
	"header": {
		"data_hash": "Cbdq4vEOZ2Nlo6CYmiMsudCHr+Xh9z+93lBaPUmvwr0=",
		"number": "0",
		"previous_hash": null
	},
	"metadata": {
		"metadata": [
			"",
			"",
			"",
			"",
			""
		]
	}
}
