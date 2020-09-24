.class final Lcom/android/settings/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$3;->a:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 324
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$3;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->i(Lcom/android/settings/CryptKeeper;)V

    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$3;->a:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->h(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
