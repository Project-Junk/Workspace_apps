.class public Lcom/android/systemui/egg/MLandActivity;
.super Landroid/app/Activity;
.source "MLandActivity.java"


# instance fields
.field mLand:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0137

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLandActivity;->setContentView(I)V

    const p1, 0x7f0a0643

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/egg/MLand;

    iput-object p1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    .line 33
    iget-object p1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const v0, 0x7f0a04e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/android/systemui/egg/MLand;->setScoreFieldHolder(Landroid/view/ViewGroup;)V

    const p1, 0x7f0a062e

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0, p1}, Lcom/android/systemui/egg/MLand;->setSplash(Landroid/view/View;)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {p1}, Lcom/android/systemui/egg/MLand;->getGameControllers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 72
    iget-object p0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    return-void
.end method

.method public playerMinus(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {p1}, Lcom/android/systemui/egg/MLand;->removePlayer()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    return-void
.end method

.method public playerPlus(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {p1}, Lcom/android/systemui/egg/MLand;->addPlayer()V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    return-void
.end method

.method public startButtonPressed(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f0a0462

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0463

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public updateSplashPlayers()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const v1, 0x7f0a0462

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0463

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 47
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    .line 51
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
