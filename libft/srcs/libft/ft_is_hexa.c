/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_hexa.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: llahti <llahti@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/23 16:07:36 by llahti            #+#    #+#             */
/*   Updated: 2020/01/23 16:07:41 by llahti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_is_hexa(char c)
{
	return ((c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') ||
			(c >= 'a' && c <= 'f'));
}