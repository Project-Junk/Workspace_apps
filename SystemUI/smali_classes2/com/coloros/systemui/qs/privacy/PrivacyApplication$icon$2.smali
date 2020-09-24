.class final Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/privacy/PrivacyApplication;-><init>(Ljava/lang/String;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyItem.kt\ncom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2\n*L\n1#1,77:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/drawable/Drawable;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-static {v0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->access$getApplicationInfo$p(Lcom/coloros/systemui/qs/privacy/PrivacyApplication;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-virtual {v1}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-virtual {v2}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;->this$0:Lcom/coloros/systemui/qs/privacy/PrivacyApplication;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1080093

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/privacy/PrivacyApplication$icon$2;->invoke()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
