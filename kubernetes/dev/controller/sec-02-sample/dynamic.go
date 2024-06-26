package main

import (
	"context"

	myresourcev1alpha1 "github.com/kwstars/controller-sample/pkg/apis/mygroup.example.com/v1alpha1"
	metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/apis/meta/v1/unstructured"
	"k8s.io/client-go/dynamic"
)

func DeleteMyResource(dynamicClient dynamic.Interface, u *unstructured.Unstructured) error {
	gvr := myresourcev1alpha1.SchemeGroupVersion.WithResource("myresources")

	return dynamicClient.Resource(gvr).Namespace("default").Delete(context.Background(), "myres1", metav1.DeleteOptions{})
}

func CreateMyResource(dynamicClient dynamic.Interface, u *unstructured.Unstructured) (*unstructured.Unstructured, error) {
	gvr := myresourcev1alpha1.SchemeGroupVersion.WithResource("myresources")
	return dynamicClient.Resource(gvr).Namespace("default").Create(context.Background(), u, metav1.CreateOptions{})
}
