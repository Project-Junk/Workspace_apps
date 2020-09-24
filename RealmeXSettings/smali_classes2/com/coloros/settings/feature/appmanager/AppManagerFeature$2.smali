.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;
.super Landroid/view/animation/Animation;
.source "AppManagerFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showOrHideToolBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Z)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;->a:Z

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 496
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;->b:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;->a:Z

    invoke-static {p2, p1, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$200(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;FZ)V

    return-void
.end method
