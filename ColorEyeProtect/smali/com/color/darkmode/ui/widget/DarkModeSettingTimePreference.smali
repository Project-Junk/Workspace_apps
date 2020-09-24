.class public final Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;
.super Landroidx/preference/Preference;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;,
        Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;,
        Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$Companion;

.field private static final DELAY_TIME:I = 0x1f4

.field private static final HOUR_BEGIN:I = 0x0

.field private static final HOUR_END:I = 0x17

.field private static final HOUR_INVALID_MAX:I = 0x18

.field private static final HOUR_INVALID_MIN:I = -0x1

.field private static final MINUTE_BEGIN:I = 0x0

.field private static final MINUTE_END:I = 0x3b

.field private static final MSG_TIME_CHANGE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DarkModeSettingTimePreference"


# instance fields
.field private mBeginHour:I

.field private mBeginMinute:I

.field private mCloseTime:Landroid/widget/TextView;

.field private mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

.field private mCloseTimePickerStub:Landroid/view/ViewStub;

.field private mCloseTimeRoot:Landroid/view/View;

.field private mEndHour:I

.field private mEndMinute:I

.field private mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

.field private mIsCloseTimePickVisible:Z

.field private mIsOpenTimePickVisible:Z

.field private mOnNextAutoSwitchTimeChangeListener:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;

.field private mOpenTime:Landroid/widget/TextView;

.field private mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

.field private mOpenTimePickerStub:Landroid/view/ViewStub;

.field private mOpenTimeRoot:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$Companion;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->Companion:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0b0087

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setLayoutResource(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILa/d/b/e;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getMBeginHour$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    return p0
.end method

.method public static final synthetic access$getMBeginMinute$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    return p0
.end method

.method public static final synthetic access$getMEndHour$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    return p0
.end method

.method public static final synthetic access$getMEndMinute$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    return p0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    if-nez p0, :cond_0

    const-string v0, "mHandler"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$sendTimeChangeMessage(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;Lcom/color/support/widget/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->sendTimeChangeMessage(Lcom/color/support/widget/e;)V

    return-void
.end method

.method public static final synthetic access$setMBeginHour$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    return-void
.end method

.method public static final synthetic access$setMBeginMinute$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    return-void
.end method

.method public static final synthetic access$setMEndHour$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    return-void
.end method

.method public static final synthetic access$setMEndMinute$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    return-void
.end method

.method public static final synthetic access$setMHandler$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    return-void
.end method

.method public static final synthetic access$updateTime(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->updateTime(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V

    return-void
.end method

.method private final inflateFromStubIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePickerStub:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->isStubNotInflate(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePickerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePickerStub:Landroid/view/ViewStub;

    if-nez v1, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->initOpenTimePicker()V

    :cond_3
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePickerStub:Landroid/view/ViewStub;

    invoke-direct {p0, v0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->isStubNotInflate(Landroid/view/ViewStub;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePickerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePickerStub:Landroid/view/ViewStub;

    if-nez v1, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->initCloseTimePicker()V

    :cond_7
    return-void

    :cond_8
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, La/o;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p0, v0}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final initCloseTimePicker()V
    .locals 3

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    iget-boolean v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-virtual {v0, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    move-object v1, p0

    check-cast v1, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    new-instance v1, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initCloseTimePicker$1;

    invoke-direct {v1, p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initCloseTimePicker$1;-><init>(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)V

    check-cast v1, Lcom/color/support/widget/e$a;

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/e$a;)V

    :cond_8
    return-void
.end method

.method private final initOpenTimePicker()V
    .locals 3

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    iget-boolean v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-virtual {v0, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    move-object v1, p0

    check-cast v1, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTouchEndListener(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker$OnTouchEndListener;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    new-instance v1, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;

    invoke-direct {v1, p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;-><init>(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)V

    check-cast v1, Lcom/color/support/widget/e$a;

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setOnTimeChangedListener(Lcom/color/support/widget/e$a;)V

    :cond_8
    return-void
.end method

.method private final initUI(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimeRoot:Landroid/view/View;

    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimeRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimeRoot:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimeRoot:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTime:Landroid/widget/TextView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePickerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePickerStub:Landroid/view/ViewStub;

    goto :goto_0

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePickerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_5

    const v0, 0x7f080064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePickerStub:Landroid/view/ViewStub;

    goto :goto_1

    :cond_4
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeBeginTime(Landroid/content/ContentResolver;)[I

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "context.contentResolver"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeEndTime(Landroid/content/ContentResolver;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    iput v3, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    const/4 v3, 0x1

    aget v0, v0, v3

    iput v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    aget v0, v1, v2

    iput v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    aget v0, v1, v3

    iput v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTime:Landroid/widget/TextView;

    if-nez v1, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setCloseTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->updateTimeColor()V

    iget-boolean p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    if-eqz p1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->inflateFromStubIfNeed()V

    :cond_8
    return-void

    :cond_9
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final isStubNotInflate(Landroid/view/ViewStub;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private final sendTimeChangeMessage(Lcom/color/support/widget/e;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    iget-object v0, v0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    invoke-direct {v0, p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;-><init>(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)V

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    :cond_0
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    if-nez v0, :cond_1

    const-string v1, "mHandler"

    invoke-static {v1}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    if-nez v0, :cond_2

    const-string v2, "mHandler"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    if-nez v0, :cond_4

    const-string v2, "mHandler"

    invoke-static {v2}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_4
    check-cast v0, Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mHandler:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    if-nez p0, :cond_5

    const-string v0, "mHandler"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x1f4

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final setCloseTime(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTime:Landroid/widget/TextView;

    if-nez p0, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setFixTimeDuration()V
    .locals 14

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeBeginTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    sget-object v7, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v0, "context.contentResolver"

    invoke-static {v8, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v10, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeEndTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v3, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget v4, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v5, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    invoke-virtual/range {v0 .. v5}, Lcom/color/darkmode/utils/DarkModeManager;->updateDurationAndState(Landroid/content/Context;IIII)V

    sget-object v0, Lcom/color/darkmode/utils/StatisticsUtils;->INSTANCE:Lcom/color/darkmode/utils/StatisticsUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTime:Landroid/widget/TextView;

    if-nez v2, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTime:Landroid/widget/TextView;

    if-nez p0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/color/darkmode/utils/StatisticsUtils;->reportSetTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateTime(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V
    .locals 3

    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->isTouchEnd()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    const/16 v1, 0x3b

    if-ne p1, v0, :cond_9

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    const/4 v0, -0x1

    if-nez p1, :cond_1

    iput v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    if-ne p1, v0, :cond_2

    const/16 p1, 0x17

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v1, :cond_3

    invoke-static {}, La/d/b/g;->a()V

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v1, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v2, :cond_5

    invoke-static {}, La/d/b/g;->a()V

    :cond_5
    invoke-virtual {v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTime:Landroid/widget/TextView;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget-object v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v2, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    invoke-virtual {v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTime:Landroid/widget/TextView;

    if-nez v0, :cond_8

    :goto_1
    invoke-static {}, La/d/b/g;->a()V

    :cond_8
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    iget-object v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v2, :cond_10

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginHour:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    if-ne p1, v0, :cond_f

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mBeginMinute:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    if-ne p1, v0, :cond_f

    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    if-ne p1, v1, :cond_a

    const/4 p1, 0x0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_b

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    goto :goto_2

    :cond_a
    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    :cond_b
    :goto_2
    iget p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v1, :cond_c

    invoke-static {}, La/d/b/g;->a()V

    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v1, :cond_d

    invoke-static {}, La/d/b/g;->a()V

    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget-object v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v2, :cond_e

    invoke-static {}, La/d/b/g;->a()V

    :cond_e
    invoke-virtual {v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_f
    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndHour:I

    iget v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mEndMinute:I

    iget-object v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v2, :cond_10

    :goto_3
    invoke-static {}, La/d/b/g;->a()V

    :cond_10
    invoke-virtual {v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setCloseTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->setFixTimeDuration()V

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOnNextAutoSwitchTimeChangeListener:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOnNextAutoSwitchTimeChangeListener:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;

    if-nez p0, :cond_11

    invoke-static {}, La/d/b/g;->a()V

    :cond_11
    invoke-interface {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;->onNextAutoSwitchTimeChange()V

    :cond_12
    return-void
.end method

.method private final updateTimeColor()V
    .locals 2

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTime:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    iget-boolean v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTime:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    iget-boolean p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    if-eqz v0, :cond_3

    :cond_0
    iput-boolean v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    iput-boolean v1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez v0, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p0, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/preference/l;->a:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->initUI(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f0800ed

    if-ne p1, v3, :cond_5

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->inflateFromStubIfNeed()V

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_1

    invoke-static {}, La/d/b/g;->a()V

    :cond_1
    invoke-virtual {p1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    :goto_0
    iput-boolean v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    goto :goto_1

    :cond_5
    const v3, 0x7f080065

    if-ne p1, v3, :cond_b

    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->inflateFromStubIfNeed()V

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_6

    invoke-static {}, La/d/b/g;->a()V

    :cond_6
    invoke-virtual {p1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_7

    invoke-static {}, La/d/b/g;->a()V

    :cond_7
    invoke-virtual {p1, v2}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOpenTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_8

    invoke-static {}, La/d/b/g;->a()V

    :cond_8
    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsOpenTimePickVisible:Z

    iput-boolean v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mIsCloseTimePickVisible:Z

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mCloseTimePicker:Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    if-nez p1, :cond_a

    invoke-static {}, La/d/b/g;->a()V

    :cond_a
    invoke-virtual {p1, v1}, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;->setVisibility(I)V

    goto :goto_0

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->updateTimeColor()V

    return-void
.end method

.method public onTouchEnd(Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V
    .locals 1

    const-string v0, "picker"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/color/support/widget/e;

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->sendTimeChangeMessage(Lcom/color/support/widget/e;)V

    return-void
.end method

.method public final setOnNextAutoSwitchTimeChangeListener(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->mOnNextAutoSwitchTimeChangeListener:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$OnNextAutoSwitchTimeChangeListener;

    return-void
.end method
