.class final Lcom/coloros/settings/SettingsAppCompatListActivity$2;
.super Ljava/lang/Object;
.source "SettingsAppCompatListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 105
    iput-object p1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity$2;->a:Lcom/coloros/settings/SettingsAppCompatListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/SettingsAppCompatListActivity$2;->a:Lcom/coloros/settings/SettingsAppCompatListActivity;

    invoke-virtual {p1, p3}, Lcom/coloros/settings/SettingsAppCompatListActivity;->a(I)V

    return-void
.end method
