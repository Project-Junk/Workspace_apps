.class final Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;
.super Ljava/lang/Object;
.source "BaseIris5Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->showDialogFHD(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;Z)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;->b:Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;->b:Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;

    iget-boolean p2, p0, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller$1;->a:Z

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;->access$000(Lcom/coloros/settings/feature/display/controller/BaseIris5Controller;Z)V

    return-void
.end method
