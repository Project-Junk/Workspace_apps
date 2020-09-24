.class final Lcom/android/settings/users/AppRestrictionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->a(Lcom/android/settings/users/AppRestrictionsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/p/a;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$1;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/p/a;->a(Lcom/android/settingslib/p/a$c;)V

    :cond_0
    return-void
.end method
