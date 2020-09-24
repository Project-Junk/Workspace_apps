.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;
    }
.end annotation


# static fields
.field public static final NUM_QUICK_TILES:Ljava/lang/String; = "sysui_qqs_count"

.field private static final TAG:Ljava/lang/String; = "QuickQSPanel"

.field private static mDefaultMaxTiles:I


# instance fields
.field private mDisabledByPolicy:Z

.field protected mFullPanel:Lcom/android/systemui/qs/QSPanel;

.field private mMaxTiles:I

.field private final mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    .line 171
    new-instance p2, Lcom/android/systemui/qs/QuickQSPanel$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QuickQSPanel$1;-><init>(Lcom/android/systemui/qs/QuickQSPanel;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 65
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p2, :cond_0

    .line 66
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move p2, p3

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QuickQSPanel;->removeView(Landroid/view/View;)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b00c8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    sput p2, Lcom/android/systemui/qs/QuickQSPanel;->mDefaultMaxTiles:I

    .line 75
    new-instance p2, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/QuickQSPanel$HeaderTileLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mListening:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/QuickQSPanel;->addView(Landroid/view/View;I)V

    .line 84
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-nez p1, :cond_3

    .line 85
    invoke-super {p0, p3, p3, p3, p3}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public static getNumQuickTiles(Landroid/content/Context;)I
    .locals 2

    .line 179
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    sget v0, Lcom/android/systemui/qs/QuickQSPanel;->mDefaultMaxTiles:I

    const-string v1, "sysui_qqs_count"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected addDivider()V
    .locals 0

    return-void
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 122
    instance-of v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 124
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    const/4 p2, 0x0

    .line 126
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 127
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    move-object p2, v0

    .line 130
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onAttachedToWindow()V

    .line 102
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v1, "sysui_qqs_count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onDetachedFromWindow()V

    .line 108
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "qs_show_brightness"

    .line 153
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "0"

    .line 155
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setDisabledByPolicy(Z)V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eq p1, v0, :cond_1

    .line 184
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 185
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public setMaxTiles(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    .line 146
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mFullPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 p1, 0x1

    .line 168
    invoke-super {p0, v0, p1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move p1, v1

    .line 203
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
