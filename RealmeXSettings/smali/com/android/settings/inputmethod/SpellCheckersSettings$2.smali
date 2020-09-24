.class final Lcom/android/settings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/SpellCheckersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/textservice/SpellCheckerInfo;

.field final synthetic b:Lcom/android/settings/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->b:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->a:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->b:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iget-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;->a:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {p1, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method
