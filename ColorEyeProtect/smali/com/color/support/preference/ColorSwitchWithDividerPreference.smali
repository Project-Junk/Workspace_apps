.class public Lcom/color/support/preference/ColorSwitchWithDividerPreference;
.super Lcom/color/support/preference/ColorSwitchPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcolor/support/v7/a/a$b;->colorSwitchWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/preference/ColorSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/color/support/preference/ColorSwitchWithDividerPreference;)Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->d:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    return-object p0
.end method

.method static synthetic b(Lcom/color/support/preference/ColorSwitchWithDividerPreference;)V
    .locals 0

    invoke-super {p0}, Lcom/color/support/preference/ColorSwitchPreference;->onClick()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/color/support/preference/ColorSwitchPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/preference/l;->a:Landroid/view/View;

    sget v1, Lcolor/support/v7/a/a$g;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/color/support/preference/ColorSwitchWithDividerPreference$1;

    invoke-direct {v1, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference$1;-><init>(Lcom/color/support/preference/ColorSwitchWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p1, Landroidx/preference/l;->a:Landroid/view/View;

    sget v0, Lcolor/support/v7/a/a$g;->switch_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->c:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->c:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/color/support/preference/ColorSwitchWithDividerPreference$2;

    invoke-direct {v0, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference$2;-><init>(Lcom/color/support/preference/ColorSwitchWithDividerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
