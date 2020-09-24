.class public Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;
.super Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;
.source "ColorScreenZoomPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private h:I

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 156
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 157
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    aget p1, p1, p2

    iput p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected final a()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    iget v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->c:I

    aget v0, v0, v1

    .line 167
    iget v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->h:I

    if-ne v0, v1, :cond_0

    .line 168
    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->f:Z

    if-nez v1, :cond_0

    .line 171
    invoke-static {}, Lcom/android/settingslib/f/b;->a()V

    return-void

    .line 174
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

    const/16 v0, 0x172

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 66
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->f:Z

    .line 70
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->f:Z

    const/4 v3, 0x5

    const-string v4, ","

    if-eqz v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v3, :cond_1

    const v0, 0x7f0d00e2

    .line 71
    iput v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->d:I

    goto :goto_1

    :cond_1
    const v0, 0x7f0d00e1

    .line 73
    iput v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->d:I

    :goto_1
    const/4 v0, 0x2

    .line 77
    new-array v5, v0, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->e:[I

    .line 79
    iget-boolean v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->f:Z

    if-eqz v5, :cond_5

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aq(Landroid/content/Context;)I

    move-result v0

    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 82
    array-length v4, p1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    .line 83
    array-length v4, p1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a:[Ljava/lang/String;

    move v4, v2

    .line 84
    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 85
    iget-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    .line 86
    array-length v5, p1

    if-ne v5, v3, :cond_2

    .line 87
    iget-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a:[Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/coloros/settings/utils/al;->b:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    goto :goto_3

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a:[Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/coloros/settings/utils/al;->a:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    aget v1, p1, v1

    iput v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->h:I

    .line 93
    aget p1, p1, v0

    .line 94
    :goto_4
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    array-length v1, v0

    if-ge v2, v1, :cond_a

    .line 95
    aget v0, v0, v2

    if-ne v0, p1, :cond_4

    .line 96
    iput v2, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->b:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 100
    :cond_5
    new-instance p1, Lcom/android/settingslib/f/b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/settingslib/f/b;-><init>(Landroid/content/Context;)V

    .line 1185
    iget v3, p1, Lcom/android/settingslib/f/b;->e:I

    if-gez v3, :cond_6

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 108
    new-array v0, v1, [I

    aput p1, v0, v2

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    .line 109
    new-array v0, v1, [Ljava/lang/String;

    sget v1, Lcom/android/settingslib/f/b;->a:I

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a:[Ljava/lang/String;

    .line 110
    iput v2, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->b:I

    .line 111
    iput p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->h:I

    goto :goto_6

    .line 2181
    :cond_6
    iget-object v4, p1, Lcom/android/settingslib/f/b;->c:[I

    .line 3177
    iget-object v5, p1, Lcom/android/settingslib/f/b;->b:[Ljava/lang/String;

    .line 3189
    iget p1, p1, Lcom/android/settingslib/f/b;->d:I

    .line 116
    iput p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->h:I

    .line 117
    aget p1, v4, v3

    .line 118
    iget v3, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->h:I

    if-le p1, v3, :cond_7

    .line 119
    iput v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->b:I

    goto :goto_5

    :cond_7
    if-ge p1, v3, :cond_8

    .line 121
    iput v2, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->b:I

    goto :goto_5

    .line 123
    :cond_8
    iput v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->b:I

    .line 126
    :goto_5
    array-length p1, v4

    const/4 v3, 0x3

    if-le p1, v3, :cond_9

    .line 127
    new-array p1, v3, [I

    aget v6, v4, v2

    aput v6, p1, v2

    iget v6, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->h:I

    aput v6, p1, v1

    array-length v6, v4

    sub-int/2addr v6, v1

    aget v4, v4, v6

    aput v4, p1, v0

    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    .line 128
    new-array p1, v3, [Ljava/lang/String;

    aget-object v3, v5, v2

    aput-object v3, p1, v2

    sget v2, Lcom/android/settingslib/f/b;->a:I

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    array-length v2, v5

    sub-int/2addr v2, v1

    aget-object v1, v5, v2

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a:[Ljava/lang/String;

    goto :goto_6

    .line 130
    :cond_9
    iput-object v4, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->i:[I

    .line 131
    iput-object v5, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a:[Ljava/lang/String;

    .line 135
    :cond_a
    :goto_6
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d00e3
        0x7f0d00e5
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f12133b

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    :cond_0
    return-object p1
.end method

.method public onStop()V
    .locals 4

    .line 53
    iget v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->c:I

    iget v1, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->b:I

    if-eq v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x172

    iget v3, p0, Lcom/coloros/settings/feature/display/zoom/ColorScreenZoomPreferenceFragment;->c:I

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/coloros/settings/feature/display/zoom/ColorPreviewSeekBarPreferenceFragment;->onStop()V

    return-void
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
