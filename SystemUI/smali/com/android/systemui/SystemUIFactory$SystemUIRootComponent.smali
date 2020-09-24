.class public interface abstract Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/android/systemui/SystemUIFactory;,
        Lcom/android/systemui/DependencyProvider;,
        Lcom/android/systemui/DependencyBinder;,
        Lcom/android/systemui/SystemUIFactory$ContextHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemUIRootComponent"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method

.method public abstract createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
.end method

.method public abstract getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation
.end method
