.class final Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;
.super Ljava/lang/Object;
.source "AutomationRulesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 115
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

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

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->a(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/widget/SettingsColorListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/widget/SettingsColorListView;->getHeaderViewsCount()I

    move-result p1

    :goto_0
    sub-int/2addr p3, p1

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->a(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a(I)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 123
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/coloros/settings/feature/zenmode/ZenModeAddRules;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "ruleID"

    .line 124
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$1;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
