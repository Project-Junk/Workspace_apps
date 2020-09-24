.class public final synthetic Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/nearme/instant/router/Instant$Builder;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/nearme/instant/router/Instant$Builder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;->f$0:Lcom/nearme/instant/router/Instant$Builder;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;->f$0:Lcom/nearme/instant/router/Instant$Builder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$QuickAppRouter$HX28DgD7l1cpcO7dTQDuKShGcrY;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->lambda$startInstantOaps$0(Lcom/nearme/instant/router/Instant$Builder;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
