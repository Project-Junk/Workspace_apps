.class public final Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory_ProvideAllowNotificationLongPressFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIFactory;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->module:Lcom/android/systemui/SystemUIFactory;

    return-void
.end method

.method public static create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;
    .locals 1

    .line 21
    new-instance v0, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;-><init>(Lcom/android/systemui/SystemUIFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->module:Lcom/android/systemui/SystemUIFactory;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory;->provideAllowNotificationLongPress()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->get()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method