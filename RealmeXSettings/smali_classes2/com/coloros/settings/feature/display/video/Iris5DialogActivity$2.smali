.class final Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;
.super Ljava/lang/Object;
.source "Iris5DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;Z)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;->b:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;->b:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;->a:Z

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;Z)V

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$2;->b:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;->finish()V

    return-void
.end method
