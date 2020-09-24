.class public Lcom/oppo/camera/sticker/ui/h$a;
.super Ljava/lang/Object;
.source "StickerMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/sticker/ui/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1

    .line 1235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1229
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h$a;->a:Landroid/graphics/drawable/Drawable;

    .line 1230
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h$a;->b:Landroid/graphics/drawable/Drawable;

    .line 1231
    iput-object v0, p0, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1232
    iput-boolean v0, p0, Lcom/oppo/camera/sticker/ui/h$a;->d:Z

    .line 1236
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/h$a;->a:Landroid/graphics/drawable/Drawable;

    .line 1237
    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/h$a;->b:Landroid/graphics/drawable/Drawable;

    .line 1238
    iput-object p3, p0, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    .line 1239
    iput-boolean p4, p0, Lcom/oppo/camera/sticker/ui/h$a;->d:Z

    return-void
.end method
