.class final Lcom/android/settings/users/ProfileUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "ProfileUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/ProfileUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/settings/users/ProfileUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->b:Lcom/android/settings/users/ProfileUpdateReceiver;

    iput-object p2, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    .line 42
    iget-object v0, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/users/ProfileUpdateReceiver;->a(Landroid/content/Context;)V

    return-void
.end method
