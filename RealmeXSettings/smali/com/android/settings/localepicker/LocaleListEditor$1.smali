.class final Lcom/android/settings/localepicker/LocaleListEditor$1;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$1;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Lcom/android/settings/localepicker/LocaleListEditor;)Z

    return-void
.end method
