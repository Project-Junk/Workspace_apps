.class public Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;
.super Landroidx/preference/Preference;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

.field private g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

.field private h:Landroid/view/ViewStub;

.field private i:Landroid/view/ViewStub;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;

.field private r:Ljava/lang/String;

.field private volatile s:Z

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->j:Z

    iput-boolean p2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    iput-boolean p2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    iput-boolean p2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->s:Z

    new-instance p2, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$1;

    invoke-direct {p2, p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$1;-><init>(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;)V

    iput-object p2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f0089

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    const p1, 0x7f0b0087

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->setLayoutResource(I)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->m(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;I)I
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    return p1
.end method

.method private a(Landroidx/preference/l;)V
    .locals 2

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->s:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->s:Z

    return-void

    :cond_0
    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->b:Landroid/view/View;

    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->d:Landroid/widget/TextView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->e:Landroid/widget/TextView;

    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->h:Landroid/view/ViewStub;

    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->i:Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->i(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->j(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->k(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->l(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    invoke-static {v0, v1, p1}, Lcom/color/eyeprotect/util/e;->a(IIZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    invoke-static {v0, v1, p1}, Lcom/color/eyeprotect/util/e;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->e()V

    iget-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->b()V

    :cond_2
    return-void
.end method

.method private a(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V
    .locals 3

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->isTouchEnd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    const/16 v1, 0x3b

    if-ne p1, v0, :cond_4

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    if-nez p1, :cond_1

    iput v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/16 p1, 0x17

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    :goto_1
    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/color/eyeprotect/util/e;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    if-ne p1, v0, :cond_7

    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    if-ne p1, v1, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_6

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    :cond_6
    :goto_2
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_7
    :goto_3
    iget p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    :goto_4
    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/color/eyeprotect/util/e;->a(IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->j:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->j:Z

    iget-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->j:Z

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->b(Z)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->q:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->q:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;

    invoke-interface {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;->d()V

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;Lcom/color/support/widget/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Lcom/color/support/widget/e;)V

    return-void
.end method

.method private a(Lcom/color/support/widget/e;)V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->t:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/view/ViewStub;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;I)I
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->h:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->h:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->h:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->d()V

    :cond_1
    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->i:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->i:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->i:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->c()V

    :cond_3
    return-void
.end method

.method private b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;I)Z

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->h(Landroid/content/ContentResolver;I)Z

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->j(Landroid/content/ContentResolver;I)Z

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->l(Landroid/content/ContentResolver;I)Z

    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a:Landroid/content/ContentResolver;

    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;Z)Z

    return-void
.end method

.method static synthetic c(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;I)I
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    return p1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iget-boolean v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {v0, p0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    new-instance v1, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$2;

    invoke-direct {v1, p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$2;-><init>(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/e$a;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;I)I
    .locals 0

    iput p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    return p1
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iget-boolean v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {v0, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {v0, p0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    new-instance v1, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$3;

    invoke-direct {v1, p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$3;-><init>(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/e$a;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->d:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->e:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->q:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->s:Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    iput-boolean v1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Landroidx/preference/l;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f0800ed

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->b()V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    :goto_0
    iput-boolean v2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    goto :goto_1

    :cond_1
    const v3, 0x7f080065

    if-ne p1, v3, :cond_3

    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->b()V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->f:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->o:Z

    iput-boolean v0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->p:Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->g:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->e()V

    return-void
.end method

.method public onTouchEnd(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Lcom/color/support/widget/e;)V

    return-void
.end method
