.class public final Lcom/android/settingslib/location/b$a;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/UserHandle;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Z

.field public final f:Ljava/lang/CharSequence;

.field public final g:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/android/settingslib/location/b$a;->a:Ljava/lang/String;

    .line 255
    iput-object p2, p0, Lcom/android/settingslib/location/b$a;->b:Landroid/os/UserHandle;

    .line 256
    iput-object p3, p0, Lcom/android/settingslib/location/b$a;->c:Landroid/graphics/drawable/Drawable;

    .line 257
    iput-object p4, p0, Lcom/android/settingslib/location/b$a;->d:Ljava/lang/CharSequence;

    .line 258
    iput-boolean p5, p0, Lcom/android/settingslib/location/b$a;->e:Z

    .line 259
    iput-object p6, p0, Lcom/android/settingslib/location/b$a;->f:Ljava/lang/CharSequence;

    .line 260
    iput-wide p7, p0, Lcom/android/settingslib/location/b$a;->g:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JB)V
    .locals 0

    .line 242
    invoke-direct/range {p0 .. p8}, Lcom/android/settingslib/location/b$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;J)V

    return-void
.end method
