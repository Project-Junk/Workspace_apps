.class public Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;
.super Landroidx/preference/Preference;
.source "OppoScheduleTimePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;
    }
.end annotation


# instance fields
.field a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field b:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

.field private h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/content/Context;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->m:Z

    .line 56
    iput-boolean p2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->n:Z

    .line 60
    new-instance p2, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$1;-><init>(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->p:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->o:Landroid/content/Context;

    const p1, 0x7f0d022d

    .line 81
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    return p1
.end method

.method private a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)Ljava/lang/String;
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    const-string v1, "OppoScheduleTimePreference"

    const/16 v2, 0xc

    const/16 v3, 0xb

    if-ne p1, v0, :cond_0

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 186
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 187
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 190
    :cond_0
    iget p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    mul-int/lit8 p1, p1, 0x3c

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    add-int/2addr p1, v0

    .line 191
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    mul-int/lit8 v0, v0, 0x3c

    iget v4, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    add-int/2addr v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt p1, v0, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    const v0, 0x7f121b1c

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v5

    .line 194
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 195
    iget v7, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    invoke-virtual {v6, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 196
    iget v3, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 197
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->o:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3

    .line 200
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->o:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 202
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getTimeStr_error = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p1, v2

    .line 206
    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getTimeStr_tempTimeStr = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;Lcom/color/support/widget/OppoTimePicker;)V
    .locals 2

    .line 2156
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->p:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->p:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->p:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2160
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->p:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;Lcom/coloros/settings/widget/LocalOppoTimePicker;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-ne p1, v0, :cond_0

    .line 1168
    iget p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1169
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1170
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1176
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1177
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1178
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->b:Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$a;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    return p1
.end method

.method static synthetic e(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    return p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 212
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 213
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0487

    .line 1093
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->c:Landroid/view/View;

    const v0, 0x7f0a0155

    .line 1094
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->d:Landroid/view/View;

    .line 1095
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0484

    .line 1098
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0152

    .line 1099
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0485

    .line 1100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    const v0, 0x7f0a0153

    .line 1101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    .line 1103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    .line 1104
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1105
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1108
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initUI_mStartHour = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mStartMinute = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mEndHour = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mEndMinute = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OppoScheduleTimePreference"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1111
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1112
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    .line 1113
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    .line 1114
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_1
    iget p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1117
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    .line 1118
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    .line 1119
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->m:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 1124
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    .line 1125
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1126
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1127
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    new-instance v0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$2;-><init>(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    .line 1139
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->n:Z

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 1140
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    .line 1141
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1142
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1143
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    new-instance v0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference$3;-><init>(Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f0a0487

    if-ne p1, v3, :cond_2

    .line 221
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 224
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->m:Z

    .line 225
    iput-boolean v2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->n:Z

    goto :goto_0

    .line 227
    :cond_0
    iput-boolean v2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->m:Z

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->m:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    return-void

    :cond_2
    const v3, 0x7f0a0155

    if-ne p1, v3, :cond_5

    .line 231
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->g:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 234
    iput-boolean v2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->m:Z

    .line 235
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->n:Z

    goto :goto_1

    .line 238
    :cond_3
    iput-boolean v2, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->n:Z

    .line 240
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/OppoScheduleTimePreference;->n:Z

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    :cond_5
    return-void
.end method
