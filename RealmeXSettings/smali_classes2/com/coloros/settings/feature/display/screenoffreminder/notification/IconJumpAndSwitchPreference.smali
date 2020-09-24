.class public Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;
.super Lcom/color/support/preference/ColorPreference;
.source "IconJumpAndSwitchPreference.java"


# static fields
.field private static final f:Ljava/lang/String; = "IconJumpAndSwitchPreference"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final g:Landroid/content/Context;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/color/support/widget/ColorSwitch;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0405d1

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 55
    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->m:Z

    .line 71
    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->g:Landroid/content/Context;

    const p1, 0x7f0d008c

    .line 1126
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)Lcom/color/support/widget/ColorSwitch;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->m:Z

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->m:Z

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v0

    .line 182
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->b()V

    return-void
.end method

.method public static synthetic lambda$nQz5HREkbxLeinOGUYB5oBg15ck(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 131
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a03b3

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0a06f9

    .line 133
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->c:Landroid/widget/TextView;

    const v0, 0x7f0a06b6

    .line 134
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    .line 136
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a()V

    const v0, 0x7f0a07a2

    .line 139
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0687

    .line 140
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0701

    .line 141
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->l:Landroid/widget/ImageView;

    const v0, 0x7f0a03b0

    .line 143
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->b:Landroid/widget/RelativeLayout;

    .line 145
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->b:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference$1;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/-$$Lambda$IconJumpAndSwitchPreference$nQz5HREkbxLeinOGUYB5oBg15ck;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/-$$Lambda$IconJumpAndSwitchPreference$nQz5HREkbxLeinOGUYB5oBg15ck;-><init>(Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSwitch;->getHitRect(Landroid/graphics/Rect;)V

    .line 172
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->g:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(FLandroid/content/Context;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 173
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(FLandroid/content/Context;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 174
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->g:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(FLandroid/content/Context;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 175
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    iget-object v2, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->g:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/c;->a(FLandroid/content/Context;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 176
    new-instance v0, Landroid/view/TouchDelegate;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->i:Lcom/color/support/widget/ColorSwitch;

    invoke-direct {v0, p1, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/color/support/preference/ColorPreference;->onParentChanged(Landroidx/preference/Preference;Z)V

    .line 110
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->a()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 96
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->e:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 88
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->d:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->c:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/IconJumpAndSwitchPreference;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
