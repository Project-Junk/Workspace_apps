.class final Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;
.super Ljava/lang/Object;
.source "ColorModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;I)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;->b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    iput p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;->b:Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;

    iget p2, p0, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$3;->a:I

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;->a(I)V

    return-void
.end method
