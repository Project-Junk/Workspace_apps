.class final Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->a:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->a:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->f()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->a:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->f()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->a:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->f()V

    return-void
.end method

.method public static synthetic lambda$Z75N_-WNtLkjSsFxgPLjwlDJVG4(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->c()V

    return-void
.end method

.method public static synthetic lambda$f0Utt1k_zG2C2au9hvH9gAfY4cc(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->b()V

    return-void
.end method

.method public static synthetic lambda$iMXlbwlng7y-YYAHYPS8QISaDK4(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->a()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 131
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$Z75N_-WNtLkjSsFxgPLjwlDJVG4;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$Z75N_-WNtLkjSsFxgPLjwlDJVG4;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 136
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$f0Utt1k_zG2C2au9hvH9gAfY4cc;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$f0Utt1k_zG2C2au9hvH9gAfY4cc;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 141
    new-instance p1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$iMXlbwlng7y-YYAHYPS8QISaDK4;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$1$iMXlbwlng7y-YYAHYPS8QISaDK4;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
