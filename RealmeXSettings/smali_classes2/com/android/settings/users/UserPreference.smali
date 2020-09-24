.class public Lcom/android/settings/users/UserPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "UserPreference.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:I

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserPreference$fFF81XEM43N3xt9U_QO2Izish8E;

    sput-object v0, Lcom/android/settings/users/UserPreference;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/android/settings/users/UserPreference;->e:I

    const/16 p1, -0xa

    .line 67
    iput p1, p0, Lcom/android/settings/users/UserPreference;->b:I

    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const p1, 0x7f0d02a5

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 81
    :cond_1
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->c:Landroid/view/View$OnClickListener;

    .line 82
    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->d:Landroid/view/View$OnClickListener;

    .line 83
    iput p3, p0, Lcom/android/settings/users/UserPreference;->b:I

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->b(Z)V

    const p1, 0x7f0d00a7

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->setLayoutResource(I)V

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->c()I

    move-result p0

    .line 55
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->c()I

    move-result p1

    if-ge p0, p1, :cond_2

    return v0

    :cond_2
    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private e()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_remove_user"

    .line 156
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$fFF81XEM43N3xt9U_QO2Izish8E(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserPreference;->a(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserPreference;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->e()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->d:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method protected c()I
    .locals 2

    .line 161
    iget v0, p0, Lcom/android/settings/users/UserPreference;->b:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->e:I

    if-gez v0, :cond_3

    .line 164
    iget v0, p0, Lcom/android/settings/users/UserPreference;->b:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    const v0, 0x7fffffff

    return v0

    :cond_1
    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    const v0, 0x7ffffffe

    return v0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->b:I

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->e:I

    .line 171
    iget v0, p0, Lcom/android/settings/users/UserPreference;->e:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->b:I

    return v0

    .line 173
    :cond_3
    iget v0, p0, Lcom/android/settings/users/UserPreference;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/settings/users/UserPreference;->b:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 112
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->m()Z

    move-result v0

    .line 1089
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1091
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    const/16 v3, 0x66

    goto :goto_0

    :cond_0
    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1092
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x7f0a076a

    .line 115
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 117
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-nez v0, :cond_9

    const v0, 0x7f0a020d

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a020f

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0720

    .line 122
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 124
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 125
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    const v0, 0x7f0a03ca

    .line 134
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    .line 136
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_7

    .line 139
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->c:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_8
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_9

    .line 147
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method
