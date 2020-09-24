.class final Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$1;
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
.field final synthetic a:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$1;->a:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity$1;->a:Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;->finish()V

    return-void
.end method
