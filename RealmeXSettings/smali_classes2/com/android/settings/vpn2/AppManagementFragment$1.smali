.class final Lcom/android/settings/vpn2/AppManagementFragment$1;
.super Ljava/lang/Object;
.source "AppManagementFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/AppDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/vpn2/AppManagementFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/AppManagementFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->a:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->a:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-static {v0}, Lcom/android/settings/vpn2/AppManagementFragment;->a(Lcom/android/settings/vpn2/AppManagementFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->a:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-static {v0}, Lcom/android/settings/vpn2/AppManagementFragment;->b(Lcom/android/settings/vpn2/AppManagementFragment;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppManagementFragment$1;->a:Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/AppManagementFragment;->finish()V

    return-void
.end method
