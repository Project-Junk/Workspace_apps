.class public final synthetic Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

.field private final synthetic f$1:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;->f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;->f$1:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;->f$0:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;->f$1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->lambda$showOrHideToolBar$2$AppManagerFeature(Landroid/view/animation/Animation;)V

    return-void
.end method
