.class final Lcom/android/settings/users/AppRestrictionsFragment$b;
.super Landroidx/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field private d:Z

.field private e:Landroid/view/View$OnClickListener;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->f:Ljava/util/List;

    const p1, 0x7f0d024f

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$b;->setLayoutResource(I)V

    .line 144
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/AppRestrictionsFragment$b;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/users/AppRestrictionsFragment$b;Z)V
    .locals 0

    .line 3148
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/ArrayList;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/users/AppRestrictionsFragment$b;)Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->d:Z

    return p0
.end method

.method static synthetic d(Lcom/android/settings/users/AppRestrictionsFragment$b;)Ljava/util/List;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->f:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 181
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a00a2

    .line 183
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->d:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a05f1

    .line 185
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->d:Z

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a00a1

    .line 190
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x1020018

    .line 194
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1160
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 197
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2160
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$b;->c:Z

    xor-int/2addr v1, v2

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    .line 203
    move-object p1, v0

    check-cast p1, Landroid/widget/CompoundButton;

    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$b$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment$b$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$b;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    .line 210
    :cond_2
    invoke-static {}, Lcom/android/settings/users/AppRestrictionsFragment;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "widget_frame ViewGroup has no Switch widget: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
