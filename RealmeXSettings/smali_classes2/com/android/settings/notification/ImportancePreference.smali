.class public Lcom/android/settings/notification/ImportancePreference;
.super Landroidx/preference/Preference;
.source "ImportancePreference.java"


# instance fields
.field a:Z

.field b:I

.field c:Z

.field d:Z

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->a:Z

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/ImportancePreference;->a:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/ImportancePreference;->a:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/settings/notification/ImportancePreference;->a:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()Landroid/content/res/ColorStateList;
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settings/m;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->i:Landroid/content/Context;

    .line 82
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->i:Landroid/content/Context;

    const v0, 0x7f0803e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->e:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->i:Landroid/content/Context;

    const v0, 0x7f0803e2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ImportancePreference;->f:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0d01ed

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ImportancePreference;->setLayoutResource(I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;IZ)V
    .locals 10

    if-eqz p3, :cond_0

    .line 167
    new-instance p3, Landroid/transition/AutoTransition;

    invoke-direct {p3}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v0, 0x64

    .line 168
    invoke-virtual {p3, v0, v1}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 169
    invoke-static {p1, p3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1158
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportancePreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/m;->o(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 173
    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const v3, 0x7f0a060e

    const v4, 0x7f0a060d

    const v5, 0x7f0a060c

    const v6, 0x7f0a0076

    const v7, 0x7f0a0075

    const/16 v8, 0x8

    const v9, 0x7f0a0077

    if-lt p2, v1, :cond_1

    .line 176
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 178
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 180
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 181
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 185
    :cond_1
    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 191
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic a(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x3

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ImportancePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/view/ViewGroup;IZ)V

    .line 150
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$dR23d2CnzQlGqmXU57Q1P9cQtIY;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$dR23d2CnzQlGqmXU57Q1P9cQtIY;-><init>(Lcom/android/settings/notification/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic b(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 2

    const/4 p2, 0x2

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ImportancePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/notification/ImportancePreference;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/view/ViewGroup;IZ)V

    .line 140
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$Gvz_Tks3SML8SThBkCMr7rT9r60;

    invoke-direct {p2, p0}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$Gvz_Tks3SML8SThBkCMr7rT9r60;-><init>(Lcom/android/settings/notification/ImportancePreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public static synthetic lambda$BtFufKPsWGHPEdU_BdxYJHapJKw(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ImportancePreference;->a(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Gvz_Tks3SML8SThBkCMr7rT9r60(Lcom/android/settings/notification/ImportancePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->c()V

    return-void
.end method

.method public static synthetic lambda$NZ9UpSV0JYNswtwH_TuMmvoE58c(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ImportancePreference;->b(Landroidx/preference/PreferenceViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$dR23d2CnzQlGqmXU57Q1P9cQtIY(Lcom/android/settings/notification/ImportancePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ImportancePreference;->b()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 106
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a060b

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    const v0, 0x7f0a0072

    .line 109
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/notification/ImportancePreference;->a:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    :cond_0
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/settings/notification/ImportancePreference;->b:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/notification/ImportancePreference;->a(Landroid/view/ViewGroup;IZ)V

    .line 117
    iget v0, p0, Lcom/android/settings/notification/ImportancePreference;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/notification/ImportancePreference;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->g:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$NZ9UpSV0JYNswtwH_TuMmvoE58c;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$NZ9UpSV0JYNswtwH_TuMmvoE58c;-><init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/ImportancePreference;->h:Landroid/view/View;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$BtFufKPsWGHPEdU_BdxYJHapJKw;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/-$$Lambda$ImportancePreference$BtFufKPsWGHPEdU_BdxYJHapJKw;-><init>(Lcom/android/settings/notification/ImportancePreference;Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
