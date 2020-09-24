.class public final Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;
.super Landroidx/preference/Preference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mClickLayout:Landroid/widget/LinearLayout;

.field private mIsChecked:Z

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mOnClickListener:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

.field private mSummary:Ljava/lang/String;

.field private mSummaryText:Landroid/widget/TextView;

.field private mSummaryTextColor:I

.field private mSwitch:Lcom/color/support/widget/ColorSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILa/d/b/e;)V

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

    invoke-direct/range {v0 .. v6}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILa/d/b/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryTextColor:I

    const p1, 0x7f0b007b

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->setLayoutResource(I)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getMSwitch$p(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)Lcom/color/support/widget/ColorSwitch;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSwitch:Lcom/color/support/widget/ColorSwitch;

    return-object p0
.end method

.method public static final synthetic access$setMSwitch$p(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;Lcom/color/support/widget/ColorSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSwitch:Lcom/color/support/widget/ColorSwitch;

    return-void
.end method


# virtual methods
.method public final getMOnClickListener()Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mOnClickListener:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    if-eqz p1, :cond_4

    iget-object v0, p1, Landroidx/preference/l;->a:Landroid/view/View;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryText:Landroid/widget/TextView;

    iget v0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryTextColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p1, Landroidx/preference/l;->a:Landroid/view/View;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mClickLayout:Landroid/widget/LinearLayout;

    iget-object v0, p1, Landroidx/preference/l;->a:Landroid/view/View;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object p1, p1, Landroidx/preference/l;->a:Landroid/view/View;

    const v0, 0x7f080087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSwitch:Lcom/color/support/widget/ColorSwitch;

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mClickLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;

    invoke-direct {v0, p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$1;-><init>(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$2;

    invoke-direct {v0, p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$onBindViewHolder$2;-><init>(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummary:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummary:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSwitch:Lcom/color/support/widget/ColorSwitch;

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mIsChecked:Z

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public final setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mIsChecked:Z

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->notifyChanged()V

    return-void
.end method

.method public final setMOnClickListener(Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mOnClickListener:Lcom/color/darkmode/ui/widget/DarkModeJumpPreference$OnClickListener;

    return-void
.end method

.method public final setSummaryText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->notifyChanged()V

    return-void
.end method

.method public final setSummaryTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->mSummaryTextColor:I

    invoke-virtual {p0}, Lcom/color/darkmode/ui/widget/DarkModeJumpPreference;->notifyChanged()V

    return-void
.end method
