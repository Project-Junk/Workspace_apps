.class final Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$10;
.super Ljava/lang/Object;
.source "SevenDiracMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDialog;

.field final synthetic b:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;Landroidx/appcompat/app/AppCompatDialog;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$10;->b:Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity;

    iput-object p2, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$10;->a:Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 744
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/SevenDiracMainActivity$10;->a:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
