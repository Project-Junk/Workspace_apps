.class final Lsubstratum/theme/template/SubstratumLauncher$showDialog$1;
.super Ljava/lang/Object;
.source "SubstratumLauncher.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsubstratum/theme/template/SubstratumLauncher;


# direct methods
.method constructor <init>(Lsubstratum/theme/template/SubstratumLauncher;)V
    .locals 0

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$showDialog$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 196
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher$showDialog$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    new-instance v1, Landroid/content/Intent;

    .line 197
    const v2, 0x7f0e003a

    invoke-virtual {v0, v2}, Lsubstratum/theme/template/SubstratumLauncher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 196
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lsubstratum/theme/template/SubstratumLauncher;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher$showDialog$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher;

    invoke-virtual {v0}, Lsubstratum/theme/template/SubstratumLauncher;->finish()V

    .line 199
    return-void
.end method
