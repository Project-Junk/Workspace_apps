.class public interface abstract Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy;
.super Ljava/lang/Object;
.source "ISecurityNavProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;,
        Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;
    }
.end annotation


# static fields
.field public static final NAV_ACTION_FROM_KEYBOARD:I = 0x3

.field public static final NAV_ACTION_FROM_PHYSICAL_KEY:I = 0x1

.field public static final NAV_ACTION_FROM_VIRTUAL_KEY:I = 0x2


# virtual methods
.method public abstract forceUpdateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;I)V
.end method

.method public abstract registerNavActionListener(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;)V
.end method

.method public abstract updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V
.end method
