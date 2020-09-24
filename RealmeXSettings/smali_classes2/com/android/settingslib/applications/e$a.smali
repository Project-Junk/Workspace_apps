.class public final Lcom/android/settingslib/applications/e$a;
.super Ljava/lang/Object;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/settingslib/applications/e$a;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settingslib/applications/e;
    .locals 9

    .line 220
    new-instance v8, Lcom/android/settingslib/applications/e;

    iget-object v1, p0, Lcom/android/settingslib/applications/e$a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/applications/e$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/e$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settingslib/applications/e$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settingslib/applications/e$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/applications/e$a;->e:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/applications/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    return-object v8
.end method
