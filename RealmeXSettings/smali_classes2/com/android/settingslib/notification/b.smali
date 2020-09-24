.class public final Lcom/android/settingslib/notification/b;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/b$a;
    }
.end annotation


# static fields
.field protected static final a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final g:[I

.field private static final h:I


# instance fields
.field protected c:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected d:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected e:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected f:Landroid/view/LayoutInflater;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private i:Landroid/widget/RadioGroup;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 48
    sput-object v0, Lcom/android/settingslib/notification/b;->g:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/b;->a:I

    .line 49
    sget-object v0, Lcom/android/settingslib/notification/b;->g:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/b;->b:I

    const/16 v1, 0x3c

    .line 51
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/b;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/android/settingslib/notification/b;->c:I

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/android/settingslib/notification/b;->j:I

    .line 66
    iput-object p1, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    return-void
.end method

.method private a(ILandroid/view/View;I)V
    .locals 2

    .line 177
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/b$a;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/notification/b$a;

    invoke-direct {v0}, Lcom/android/settingslib/notification/b$a;-><init>()V

    .line 179
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v1, v0, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/notification/b;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    :cond_1
    if-gtz p1, :cond_2

    .line 187
    sget-object p1, Lcom/android/settingslib/notification/b;->g:[I

    sget v1, Lcom/android/settingslib/notification/b;->h:I

    aget p1, p1, v1

    iput p1, v0, Lcom/android/settingslib/notification/b$a;->d:I

    goto :goto_1

    .line 189
    :cond_2
    iput p1, v0, Lcom/android/settingslib/notification/b$a;->d:I

    .line 192
    :goto_1
    iget-object p1, v0, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    new-instance v1, Lcom/android/settingslib/notification/b$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/notification/b$2;-><init>(Lcom/android/settingslib/notification/b;Lcom/android/settingslib/notification/b$a;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    invoke-direct {p0, v0, p2, p3}, Lcom/android/settingslib/notification/b;->b(Lcom/android/settingslib/notification/b$a;Landroid/view/View;I)V

    return-void
.end method

.method private a(Lcom/android/settingslib/notification/b$a;Landroid/view/View;)V
    .locals 1

    .line 211
    iget-object v0, p1, Lcom/android/settingslib/notification/b$a;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/notification/b$a;->b:Landroid/view/View;

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/notification/b$a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x1020014

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/b$a;->c:Landroid/widget/TextView;

    :cond_1
    const v0, 0x1020015

    .line 220
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object p2, p1, Lcom/android/settingslib/notification/b$a;->b:Landroid/view/View;

    new-instance v0, Lcom/android/settingslib/notification/b$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/notification/b$3;-><init>(Lcom/android/settingslib/notification/b;Lcom/android/settingslib/notification/b$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/android/settingslib/notification/b$a;Landroid/view/View;I)V
    .locals 6

    const v0, 0x1020019

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 233
    new-instance v1, Lcom/android/settingslib/notification/b$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/settingslib/notification/b$4;-><init>(Lcom/android/settingslib/notification/b;Landroid/view/View;Lcom/android/settingslib/notification/b$a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a

    .line 241
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 242
    new-instance v2, Lcom/android/settingslib/notification/b$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/settingslib/notification/b$5;-><init>(Lcom/android/settingslib/notification/b;Landroid/view/View;Lcom/android/settingslib/notification/b$a;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget p2, p1, Lcom/android/settingslib/notification/b$a;->d:I

    int-to-long v2, p2

    const/4 p2, 0x1

    if-ne p3, p2, :cond_4

    const/4 p3, 0x0

    .line 251
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    sget v4, Lcom/android/settingslib/notification/b;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 255
    iget p1, p1, Lcom/android/settingslib/notification/b$a;->d:I

    sget v2, Lcom/android/settingslib/notification/b;->b:I

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 257
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 p3, 0x3f000000    # 0.5f

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 258
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p2, p3

    :goto_3
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_4
    const/16 p1, 0x8

    .line 260
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->f:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/b;->f:Landroid/view/LayoutInflater;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/e$g;->zen_mode_duration_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    sget v1, Lcom/android/settingslib/e$f;->zen_duration_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 140
    sget v2, Lcom/android/settingslib/e$f;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/b;->i:Landroid/widget/RadioGroup;

    .line 141
    sget v2, Lcom/android/settingslib/e$f;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    move v2, v1

    .line 143
    :goto_0
    iget v3, p0, Lcom/android/settingslib/notification/b;->j:I

    if-ge v2, v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/settingslib/notification/b;->f:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/e$g;->zen_mode_radio_button:I

    iget-object v5, p0, Lcom/android/settingslib/notification/b;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/android/settingslib/notification/b;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 149
    iget-object v3, p0, Lcom/android/settingslib/notification/b;->f:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/e$g;->zen_mode_condition:I

    iget-object v5, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 151
    iget v4, p0, Lcom/android/settingslib/notification/b;->j:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 152
    iget-object v4, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(I)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 167
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0}, Lcom/android/settingslib/notification/b;->a(ILandroid/view/View;I)V

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settingslib/notification/b;->a(ILandroid/view/View;I)V

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/notification/b;->a(ILandroid/view/View;I)V

    .line 173
    invoke-direct {p0, v3}, Lcom/android/settingslib/notification/b;->c(I)Lcom/android/settingslib/notification/b$a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private b(Lcom/android/settingslib/notification/b$a;Landroid/view/View;I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 267
    iget-object v0, p1, Lcom/android/settingslib/notification/b$a;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/notification/b;->a(Lcom/android/settingslib/notification/b$a;Landroid/view/View;)V

    .line 271
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/notification/b;->a(Lcom/android/settingslib/notification/b$a;Landroid/view/View;I)V

    if-eqz p3, :cond_3

    const/4 p2, 0x1

    if-eq p3, p2, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const-string p2, ""

    goto :goto_0

    .line 284
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    sget p3, Lcom/android/settingslib/e$h;->zen_mode_duration_always_prompt_title:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 279
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    iget p3, p1, Lcom/android/settingslib/notification/b$a;->d:I

    .line 280
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    .line 279
    invoke-static {p2, p3, v0, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p2

    .line 281
    iget-object p2, p2, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_3
    iget-object p2, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    sget p3, Lcom/android/settingslib/e$h;->zen_mode_forever:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 289
    :goto_0
    iget-object p1, p1, Lcom/android/settingslib/notification/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c(I)Lcom/android/settingslib/notification/b$a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/notification/b$a;

    return-object p1
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .locals 2

    .line 70
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/b;->a(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 72
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected final a(I)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->i:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "zen_duration"

    .line 99
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    const/16 v1, 0x540

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settingslib/notification/b;->c(I)Lcom/android/settingslib/notification/b$a;

    move-result-object v0

    .line 111
    iget v2, v0, Lcom/android/settingslib/notification/b$a;->d:I

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    const/16 v1, 0x53e

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    const/16 v1, 0x53f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :goto_0
    if-eq p1, v2, :cond_3

    .line 126
    iget-object p1, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method protected final a(Landroid/view/View;Lcom/android/settingslib/notification/b$a;ZI)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 295
    sget-object v0, Lcom/android/settingslib/notification/b;->g:[I

    array-length v0, v0

    .line 296
    iget v1, p0, Lcom/android/settingslib/notification/b;->c:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5

    .line 298
    iget v1, p2, Lcom/android/settingslib/notification/b$a;->d:I

    int-to-long v5, v1

    :goto_0
    if-ge v2, v0, :cond_4

    if-eqz p3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, v2

    .line 301
    :goto_1
    sget-object v7, Lcom/android/settingslib/notification/b;->g:[I

    aget v7, v7, v1

    if-eqz p3, :cond_1

    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gtz v8, :cond_2

    :cond_1
    if-nez p3, :cond_3

    int-to-long v8, v7

    cmp-long v8, v8, v5

    if-gez v8, :cond_3

    .line 303
    :cond_2
    iput v1, p0, Lcom/android/settingslib/notification/b;->c:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v7, v3

    :goto_2
    if-ne v7, v3, :cond_7

    .line 309
    sget p3, Lcom/android/settingslib/notification/b;->h:I

    iput p3, p0, Lcom/android/settingslib/notification/b;->c:I

    .line 310
    sget-object p3, Lcom/android/settingslib/notification/b;->g:[I

    iget v0, p0, Lcom/android/settingslib/notification/b;->c:I

    aget v7, p3, v0

    goto :goto_3

    :cond_5
    sub-int/2addr v0, v4

    if-eqz p3, :cond_6

    move v3, v4

    :cond_6
    add-int/2addr v1, v3

    .line 314
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/android/settingslib/notification/b;->c:I

    .line 315
    sget-object p3, Lcom/android/settingslib/notification/b;->g:[I

    iget v0, p0, Lcom/android/settingslib/notification/b;->c:I

    aget v7, p3, v0

    .line 317
    :cond_7
    :goto_3
    iput v7, p2, Lcom/android/settingslib/notification/b$a;->d:I

    .line 318
    invoke-direct {p0, v7, p1, p4}, Lcom/android/settingslib/notification/b;->a(ILandroid/view/View;I)V

    .line 319
    iget-object p1, p2, Lcom/android/settingslib/notification/b$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final a(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/notification/b;->d:Landroid/content/Context;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_duration"

    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    sget v1, Lcom/android/settingslib/e$h;->zen_mode_duration_settings_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/e$h;->cancel:I

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/e$h;->okay:I

    new-instance v3, Lcom/android/settingslib/notification/b$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settingslib/notification/b$1;-><init>(Lcom/android/settingslib/notification/b;I)V

    .line 82
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    invoke-direct {p0}, Lcom/android/settingslib/notification/b;->b()Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-direct {p0, v0}, Lcom/android/settingslib/notification/b;->b(I)V

    .line 92
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
