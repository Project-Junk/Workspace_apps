.class final Lcom/coloros/settings/SettingsAppCompatListActivity$1;
.super Ljava/lang/Object;
.source "SettingsAppCompatListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/SettingsAppCompatListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/SettingsAppCompatListActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/SettingsAppCompatListActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity$1;->a:Lcom/coloros/settings/SettingsAppCompatListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/SettingsAppCompatListActivity$1;->a:Lcom/coloros/settings/SettingsAppCompatListActivity;

    iget-object v0, v0, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity$1;->a:Lcom/coloros/settings/SettingsAppCompatListActivity;

    iget-object v1, v1, Lcom/coloros/settings/SettingsAppCompatListActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
