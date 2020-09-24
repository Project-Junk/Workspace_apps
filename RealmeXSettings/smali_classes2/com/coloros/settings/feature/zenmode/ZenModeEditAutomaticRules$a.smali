.class public final Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;
.super Landroid/widget/BaseAdapter;
.source "ZenModeEditAutomaticRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;Landroid/content/Context;[Ljava/util/Map$Entry;)V
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

    .line 269
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 270
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;Landroid/content/Context;)Landroid/content/Context;

    .line 271
    invoke-static {p1, p3}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;[Ljava/util/Map$Entry;)[Ljava/util/Map$Entry;

    .line 272
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 3277
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;

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
    .locals 10

    if-nez p2, :cond_0

    .line 299
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0d03be

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 300
    new-instance p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;

    invoke-direct {p3}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;-><init>()V

    const v0, 0x7f0a0596

    .line 301
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->a:Landroid/widget/CheckBox;

    const v0, 0x7f0a0593

    .line 302
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0594

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->c:Landroid/widget/TextView;

    .line 304
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;

    .line 308
    :goto_0
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    iget-object v1, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 324
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object p1, v0, p1

    if-eqz p1, :cond_2

    .line 341
    iget-object v0, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->a:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2443
    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2446
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v4

    .line 2447
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2448
    iget v6, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/16 v7, 0xb

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 2449
    iget v6, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    const/16 v8, 0xc

    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 2450
    iget-object v6, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->d:Ljava/lang/String;

    .line 2452
    iget v6, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 2453
    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v5, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 2454
    iget-object v4, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->e:Ljava/lang/String;

    .line 2456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 1495
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p3, p3, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;->b:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method
