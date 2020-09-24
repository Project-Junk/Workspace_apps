.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private d:I

.field private e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0d02b5

    return v0
.end method

.method protected final a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 91
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->e:[I

    aget p1, p1, p2

    iput p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected final b()[I
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0d02b6

    aput v2, v0, v1

    return-object v0

    :array_0
    .array-data 4
        0x7f0d02b6
        0x7f0d02b7
        0x7f0d02b9
    .end array-data
.end method

.method protected final c()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->e:[I

    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->c:I

    aget v0, v0, v1

    .line 102
    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->d:I

    if-ne v0, v1, :cond_0

    .line 103
    invoke-static {}, Lcom/android/settingslib/f/b;->a()V

    return-void

    .line 105
    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/f/b;->a(I)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aac

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x153

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance p1, Lcom/android/settingslib/f/b;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/f/b;-><init>(Landroid/content/Context;)V

    .line 1185
    iget v0, p1, Lcom/android/settingslib/f/b;->e:I

    if-gez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    .line 74
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->e:[I

    .line 75
    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/android/settingslib/f/b;->a:I

    invoke-virtual {p0, v1}, Lcom/android/settings/display/ScreenZoomSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->a:[Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->b:I

    .line 77
    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->d:I

    goto :goto_0

    .line 2181
    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/f/b;->c:[I

    .line 79
    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->e:[I

    .line 3177
    iget-object v1, p1, Lcom/android/settingslib/f/b;->b:[Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->a:[Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->b:I

    .line 3189
    iget p1, p1, Lcom/android/settingslib/f/b;->d:I

    .line 82
    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->d:I

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12133b

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method
