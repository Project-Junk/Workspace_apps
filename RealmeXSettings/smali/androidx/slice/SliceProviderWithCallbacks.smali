.class public abstract Landroidx/slice/SliceProviderWithCallbacks;
.super Landroidx/slice/SliceProvider;
.source "SliceProviderWithCallbacks.java"

# interfaces
.implements Landroidx/remotecallback/CallbackBase;
.implements Landroidx/remotecallback/CallbackReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/slice/SliceProviderWithCallbacks;",
        ">",
        "Landroidx/slice/SliceProvider;",
        "Landroidx/remotecallback/CallbackBase<",
        "TT;>;",
        "Landroidx/remotecallback/CallbackReceiver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/slice/SliceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/slice/SliceProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 54
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object p1, p0, Landroidx/slice/SliceProviderWithCallbacks;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "androidx.remotecallback.method.PROVIDER_CALLBACK"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object p1, Landroidx/remotecallback/CallbackHandlerRegistry;->sInstance:Landroidx/remotecallback/CallbackHandlerRegistry;

    invoke-virtual {p0}, Landroidx/slice/SliceProviderWithCallbacks;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0, p3}, Landroidx/remotecallback/CallbackHandlerRegistry;->invokeCallback(Landroid/content/Context;Landroidx/remotecallback/CallbackReceiver;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/slice/SliceProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public createRemoteCallback(Landroid/content/Context;)Landroidx/slice/SliceProviderWithCallbacks;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 68
    sget-object v0, Landroidx/remotecallback/CallbackHandlerRegistry;->sInstance:Landroidx/remotecallback/CallbackHandlerRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/SliceProviderWithCallbacks;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroidx/remotecallback/CallbackHandlerRegistry;->getAndResetStub(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;)Landroidx/remotecallback/CallbackReceiver;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceProviderWithCallbacks;

    return-object p1
.end method

.method public bridge synthetic createRemoteCallback(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroidx/slice/SliceProviderWithCallbacks;->createRemoteCallback(Landroid/content/Context;)Landroidx/slice/SliceProviderWithCallbacks;

    move-result-object p1

    return-object p1
.end method

.method public toRemoteCallback(Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/remotecallback/RemoteCallback;
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/remotecallback/RemoteCallback;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 84
    new-instance v3, Landroid/content/Intent;

    const-string v0, "androidx.remotecallback.action.PROVIDER_RELAY"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroidx/remotecallback/ProviderRelayReceiver;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "remotecallback.method"

    .line 87
    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "androidx.remotecallback.extra.AUTHORITY"

    .line 88
    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    new-instance p3, Landroidx/remotecallback/RemoteCallback;

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    move-object v1, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/remotecallback/RemoteCallback;-><init>(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p3

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ContentProvider must be attached before creating callbacks"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
