.class public final Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;
.super Landroid/widget/BaseAdapter;
.source "AutomationRulesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;Landroid/content/Context;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 354
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->a(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;Landroid/content/Context;)Landroid/content/Context;

    .line 355
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)[Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCount()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)[Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    .line 380
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d03b6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 381
    new-instance p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;

    invoke-direct {p3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;-><init>()V

    const v0, 0x7f0a0592

    .line 382
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0593

    .line 383
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0594

    .line 384
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0591

    .line 385
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->d:Lcom/color/support/widget/ColorSwitch;

    .line 386
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;

    .line 390
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a(I)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v1, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    .line 1296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2243
    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2246
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v5

    .line 2247
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 2248
    iget v7, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v8, 0xb

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 2249
    iget v7, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/16 v9, 0xc

    invoke-virtual {v6, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 2250
    iget-object v7, v2, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c:Ljava/lang/String;

    .line 2252
    iget v7, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 2253
    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v6, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 2254
    iget-object v5, v2, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d:Ljava/lang/String;

    .line 2256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, ""

    .line 1296
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v1, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->d:Lcom/color/support/widget/ColorSwitch;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 409
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 410
    iget-object v1, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->d:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorSwitch;->getHitRect(Landroid/graphics/Rect;)V

    .line 411
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->e(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 412
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->f(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 413
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->g(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 414
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->c(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;->a:Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;

    invoke-static {v3}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;->h(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 415
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->d:Lcom/color/support/widget/ColorSwitch;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 416
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 419
    iget-object p3, p3, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$b;->d:Lcom/color/support/widget/ColorSwitch;

    new-instance v0, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a$1;-><init>(Lcom/coloros/settings/feature/zenmode/AutomationRulesActivity$a;I)V

    invoke-virtual {p3, v0}, Lcom/color/support/widget/ColorSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
