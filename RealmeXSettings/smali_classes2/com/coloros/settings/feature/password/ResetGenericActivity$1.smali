.class final Lcom/coloros/settings/feature/password/ResetGenericActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ResetGenericActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ResetGenericActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ResetGenericActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity$1;->a:Lcom/coloros/settings/feature/password/ResetGenericActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    :cond_0
    return-void
.end method
