.class public Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;
.super Landroidx/preference/Preference;
.source "ProtectEyesSettingTimePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coloros/settings/widget/LocalOppoTimePicker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$a;

.field volatile b:Z

.field private c:Landroid/content/ContentResolver;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

.field private i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

.field private j:Landroid/view/ViewStub;

.field private k:Landroid/view/ViewStub;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->l:Z

    .line 82
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    .line 83
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    .line 93
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->b:Z

    .line 96
    new-instance p2, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$1;-><init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120959

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->s:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    const p1, 0x7f0d0293

    .line 118
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->setLayoutResource(I)V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->d(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->j:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->j:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 325
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->j:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0a0485

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    .line 327
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->k:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->k:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->k:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0a0153

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    .line 333
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->b()V

    :cond_3
    return-void
.end method

.method private a(Lcom/color/support/widget/OppoTimePicker;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;Lcom/color/support/widget/OppoTimePicker;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;Lcom/coloros/settings/widget/LocalOppoTimePicker;)V
    .locals 6

    .line 3075
    iget-boolean v0, p1, Lcom/coloros/settings/widget/LocalOppoTimePicker;->a:Z

    if-eqz v0, :cond_8

    .line 2203
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    const/16 v1, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3

    .line 2204
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    iget v4, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    if-ne v0, v4, :cond_2

    if-nez v0, :cond_0

    .line 2207
    iput v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    sub-int/2addr p1, v3

    .line 2208
    iput p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    .line 2209
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x17

    .line 2210
    iput p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    .line 2213
    iput v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    .line 2215
    :cond_1
    :goto_0
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    .line 2216
    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    .line 2217
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 2218
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 2219
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 2220
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2222
    :cond_2
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 2223
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2228
    :goto_1
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 2229
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 2232
    :cond_3
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    iget v4, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    if-ne p1, v4, :cond_6

    if-ne v4, v1, :cond_4

    .line 2235
    iput v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    add-int/2addr v0, v3

    .line 2236
    iput v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    .line 2237
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    const/16 v0, 0x18

    if-ne p1, v0, :cond_5

    .line 2238
    iput v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    goto :goto_2

    :cond_4
    add-int/2addr v4, v3

    .line 2241
    iput v4, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    .line 2243
    :cond_5
    :goto_2
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    .line 2244
    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    .line 2245
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 2246
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 2247
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 2250
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 2253
    :cond_6
    iget p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 2256
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Ljava/lang/String;)V

    .line 2261
    :goto_3
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->l:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->l:Z

    .line 2262
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->l:Z

    .line 3408
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    const/4 v4, -0x2

    const-string v5, "eyeprotect_begin_time_hour"

    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3409
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    const-string v5, "eyeprotect_begin_time_min"

    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3410
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    const-string v5, "eyeprotect_end_time_hour"

    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3411
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    const-string v5, "eyeprotect_end_time_min"

    invoke-static {v0, v5, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "eyeprotect_fix_time_change"

    if-eqz p1, :cond_7

    .line 3414
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    .line 3416
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2263
    :goto_4
    iget-object p0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$a;

    if-eqz p0, :cond_8

    .line 2264
    invoke-interface {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$a;->a()V

    :cond_8
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 183
    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    if-le v0, v1, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Landroid/view/ViewStub;)Z
    .locals 0

    .line 341
    invoke-virtual {p0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    return p1
.end method

.method private b()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 351
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    .line 353
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 354
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 355
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/coloros/settings/widget/LocalOppoTimePicker$a;)V

    .line 356
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    new-instance v1, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$2;-><init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    return p1
.end method

.method private c()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 375
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    .line 377
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 378
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 379
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/coloros/settings/widget/LocalOppoTimePicker$a;)V

    .line 380
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    new-instance v1, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$3;-><init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/OppoTimePicker$OnTimeChangedListener;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    return p1
.end method

.method private d()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->f:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 431
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->g:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/widget/LocalOppoTimePicker;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Lcom/color/support/widget/OppoTimePicker;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 271
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 272
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 1139
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1140
    iput-boolean v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->b:Z

    return-void

    :cond_0
    const v0, 0x7f0a0487

    .line 1144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->d:Landroid/view/View;

    const v0, 0x7f0a0155

    .line 1145
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->e:Landroid/view/View;

    .line 1146
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0484

    .line 1149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0152

    .line 1150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0486

    .line 1151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->j:Landroid/view/ViewStub;

    const v0, 0x7f0a0154

    .line 1152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->k:Landroid/view/ViewStub;

    .line 1154
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    .line 1155
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    const/16 v2, 0x16

    const/4 v3, -0x2

    const-string v4, "eyeprotect_begin_time_hour"

    .line 2163
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1155
    iput v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    .line 1156
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    const-string v2, "eyeprotect_begin_time_min"

    .line 2168
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1156
    iput v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    .line 1157
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x7

    const-string v4, "eyeprotect_end_time_hour"

    .line 2173
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1157
    iput v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    .line 1158
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->c:Landroid/content/ContentResolver;

    const-string v2, "eyeprotect_end_time_min"

    .line 2178
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1158
    iput v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    .line 1159
    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->m:I

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->n:I

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1160
    iget-object v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->o:I

    iget v1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->p:I

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/display/nightmode/b;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 1164
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Ljava/lang/String;)V

    .line 1167
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->d()V

    .line 1170
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    if-eqz p1, :cond_2

    .line 1171
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a()V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f0a0487

    if-ne p1, v3, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a()V

    .line 291
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 293
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 294
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    .line 295
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 298
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    goto :goto_0

    :cond_1
    const v3, 0x7f0a0155

    if-ne p1, v3, :cond_3

    .line 303
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a()V

    .line 305
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 306
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->h:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 308
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->q:Z

    .line 309
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    goto :goto_0

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->i:Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/LocalOppoTimePicker;->setVisibility(I)V

    .line 313
    iput-boolean v2, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->r:Z

    .line 317
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->d()V

    return-void
.end method
