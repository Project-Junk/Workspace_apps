.class public final synthetic Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/fragment/app/FragmentActivity;

.field private final synthetic f$1:Lcom/color/support/widget/ColorEditText;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;->f$0:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;->f$1:Lcom/color/support/widget/ColorEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;->f$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;->f$1:Lcom/color/support/widget/ColorEditText;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->lambda$ZP1K7or8UP47GpPCg8-DloHwP-s(Landroidx/fragment/app/FragmentActivity;Lcom/color/support/widget/ColorEditText;)V

    return-void
.end method
