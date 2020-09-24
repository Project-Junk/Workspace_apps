.class final Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;
.super Ljava/lang/Object;
.source "AutomationRulesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;I)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;->b:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    iput p2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;->b:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;->a:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a(I)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    .line 427
    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 428
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;->b:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->i(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Lcom/coloros/settings/feature/zenmode/b;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/feature/zenmode/b;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    :cond_0
    return-void
.end method
