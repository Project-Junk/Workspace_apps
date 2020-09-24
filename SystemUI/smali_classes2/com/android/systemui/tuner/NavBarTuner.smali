.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "NavBarTuner.java"


# static fields
.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final ICONS:[[I

.field private static final KEYCODE:Ljava/lang/String; = "keycode"

.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field private static final LEFT:Ljava/lang/String; = "left"

.field private static final RIGHT:Ljava/lang/String; = "right"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    .line 64
    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0808ce
        0x7f110834
    .end array-data

    :array_1
    .array-data 4
        0x7f0807b3
        0x7f110843
    .end array-data

    :array_2
    .array-data 4
        0x7f080902
        0x7f110840
    .end array-data

    :array_3
    .array-data 4
        0x7f08080d
        0x7f11083c
    .end array-data

    :array_4
    .array-data 4
        0x7f080905
        0x7f110844
    .end array-data

    :array_5
    .array-data 4
        0x7f08081c
        0x7f11083f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Landroidx/preference/ListPreference;

    .line 127
    invoke-direct {p0, p3}, Lcom/android/systemui/tuner/NavBarTuner;->setupIcons(Landroidx/preference/ListPreference;)V

    .line 128
    new-instance v8, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$AtqwC3eDMLXM8PvQu0SrBbBcxZQ;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-direct {p0, v8, p2}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 149
    new-instance p2, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;

    move-object v1, p2

    move-object v3, p1

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$5vkJoJwaFUhdGZ7Fp4qtkLVqooo;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    .line 156
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    new-instance p2, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$VEefG8gxDDp8OSjE4w47bWNl4eQ;

    move-object v1, p2

    move-object v3, v7

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$VEefG8gxDDp8OSjE4w47bWNl4eQ;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    invoke-virtual {v7, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private bindLayout(Landroidx/preference/ListPreference;)V
    .locals 2

    .line 108
    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$nx5Q7aHowvZ9Bevy96_zeYYIxAY;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/ListPreference;)V

    const-string v1, "sysui_nav_bar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 115
    sget-object p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xJajVHN9uODpq3muoNpXW6-uxwc;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xJajVHN9uODpq3muoNpXW6-uxwc;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic lambda$bindLayout$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 116
    check-cast p1, Ljava/lang/String;

    const-string p0, "default"

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 118
    :cond_0
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "sysui_nav_bar"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$null$1(Ljava/lang/String;Landroidx/preference/ListPreference;)V
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "default"

    .line 113
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDestroy$0(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 1

    .line 99
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private setValue(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 205
    invoke-virtual {p2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key"

    .line 206
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p4}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x42

    .line 210
    :try_start_0
    invoke-virtual {p3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 215
    :cond_0
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupIcons(Landroidx/preference/ListPreference;)V
    .locals 9

    .line 219
    sget-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 220
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    .line 221
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x0

    move v5, v4

    .line 223
    :goto_0
    sget-object v6, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 224
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/high16 v8, -0x1000000

    .line 227
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 228
    invoke-virtual {v7, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 229
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v7, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v7, "  "

    .line 230
    invoke-virtual {v6, v7, v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string v7, " "

    .line 231
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 232
    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v7, v7, v5

    aget v7, v7, v3

    invoke-virtual {p0, v7}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    aput-object v6, v1, v5

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v7, v7, v5

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSummary(Landroidx/preference/ListPreference;)V
    .locals 7

    const-string v0, "/"

    const/high16 v1, 0x41600000    # 14.0f

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    .line 179
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 181
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 182
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 184
    invoke-static {v2, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v6, -0x1000000

    .line 186
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 187
    invoke-virtual {v2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v2, "  "

    .line 189
    invoke-virtual {v5, v2, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string v1, " "

    .line 190
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v1, v4

    .line 191
    :goto_0
    sget-object v2, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 192
    sget-object v2, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v2, v0, :cond_0

    .line 193
    sget-object v2, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p1, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "NavButton"

    const-string v1, "Problem with summary"

    .line 198
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 199
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$bindButton$5$NavBarTuner(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 128
    iget-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$wZ2lzGXOCfhiEi7IU9RdSmlH8xg;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$wZ2lzGXOCfhiEi7IU9RdSmlH8xg;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V

    invoke-virtual {p5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$bindButton$7$NavBarTuner(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 150
    iget-object p5, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance p6, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$9XIrtR7Zhw5MdkXcZsNTskTnkTA;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$9XIrtR7Zhw5MdkXcZsNTskTnkTA;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    invoke-virtual {p5, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$bindButton$9$NavBarTuner(Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)Z
    .locals 8

    .line 159
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    .line 162
    invoke-virtual {p5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p5

    new-instance v7, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$oIjEBSphJc4nKQ1eRGlnXb5q3_A;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$oIjEBSphJc4nKQ1eRGlnXb5q3_A;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    const p0, 0x104000a

    .line 164
    invoke-virtual {p5, p0, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$bindLayout$2$NavBarTuner(Landroidx/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$dIAtS0ZbdVViOiMHYP5zUpjQ7zc;

    invoke-direct {p2, p3, p1}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$dIAtS0ZbdVViOiMHYP5zUpjQ7zc;-><init>(Ljava/lang/String;Landroidx/preference/ListPreference;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$4$NavBarTuner(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    move-object p1, p2

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key"

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p3, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result p1

    .line 138
    invoke-virtual {p4, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroidx/preference/ListPreference;)V

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 141
    invoke-virtual {p5, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 142
    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setVisible(Z)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p3, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 145
    invoke-virtual {p5, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 146
    invoke-virtual {p4, p0}, Landroidx/preference/ListPreference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$6$NavBarTuner(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    .line 152
    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public synthetic lambda$null$8$NavBarTuner(Landroid/widget/EditText;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 167
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0x42

    .line 170
    :goto_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 171
    invoke-direct {p0, p3, p4, p2, p5}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    .line 79
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f150007

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner;->addPreferencesFromResource(I)V

    const-string p1, "layout"

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/NavBarTuner;->bindLayout(Landroidx/preference/ListPreference;)V

    const-string p1, "sysui_nav_bar_left"

    const-string p2, "space"

    const-string v0, "left"

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sysui_nav_bar_right"

    const-string p2, "menu_ime"

    const-string v0, "right"

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onDestroy()V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
