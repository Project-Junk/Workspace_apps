.class Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/services/ColorEyeProtectTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {p2}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;I)Z

    iget-object p2, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {p2}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-static {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->b(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p2, p0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {p2}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/color/eyeprotect/util/e;->d(Landroid/content/ContentResolver;I)Z

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-static {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
