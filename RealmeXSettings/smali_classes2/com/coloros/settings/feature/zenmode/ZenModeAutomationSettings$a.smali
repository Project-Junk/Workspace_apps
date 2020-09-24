.class public final Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;
.super Landroid/widget/BaseAdapter;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;Landroid/content/Context;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 269
    iput-object p2, p1, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->b:Landroid/content/Context;

    .line 270
    invoke-static {p1, p3}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)[Ljava/util/Map$Entry;

    .line 271
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;)[Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 296
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d03b6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 297
    new-instance p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;

    invoke-direct {p3}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;-><init>()V

    const v0, 0x7f0a0593

    .line 298
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0594

    .line 299
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0591

    .line 300
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->c:Lcom/color/support/widget/ColorSwitch;

    .line 301
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    .line 307
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings;->a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->a:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->c:Lcom/color/support/widget/ColorSwitch;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 311
    :cond_1
    iget-object p3, p3, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$b;->c:Lcom/color/support/widget/ColorSwitch;

    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeAutomationSettings$a;Ljava/util/Map$Entry;)V

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
