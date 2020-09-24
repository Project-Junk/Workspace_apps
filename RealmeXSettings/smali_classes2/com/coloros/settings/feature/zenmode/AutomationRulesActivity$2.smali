.class final Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;
.super Ljava/lang/Object;
.source "AutomationRulesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 134
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/widget/SettingsColorListView;->getHeaderViewsCount()I

    move-result p1

    if-ge p3, p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/widget/SettingsColorListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 138
    new-instance p1, Landroid/content/Intent;

    iget-object p4, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p4}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;

    move-result-object p4

    const-class p5, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-direct {p1, p4, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "position"

    .line 139
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-object p3, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-virtual {p3, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$2;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-virtual {p1, p2, p2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return p2
.end method
